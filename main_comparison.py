import json
import logging
import numpy as np
from simulator.instance import Instance
from solver.simpleTruckLoading import SimpleTruckLoading
from heuristic.simulationHeu import SimulationHeu
from heuristic.addingOneByOneHeu import AddingOneByOneHeu
from heuristic.dpHeu import DP_Heu
from utility.plot_results import plot_result_and_comparison
import copy

if __name__ == '__main__':
    log_name = "./logs/main.log"
    logging.basicConfig(
        filename=log_name,
        format='%(asctime)s %(levelname)s: %(message)s',
        level=logging.INFO, datefmt="%H:%M:%S",
        filemode='w'
     )
    fp = open("./etc/sim_setting.json", 'r')
    sim_setting = json.load(fp)
    fp.close()
    
    # # comparison for different seeds
    # result_gap_1 = []
    # result_gap_2 = []
    # result_gap_3 = []
    # for seed in range(0,201):
    #     np.random.seed(seed)
    #     inst = Instance(sim_setting)
    #     dict_data = inst.get_data()
    #     d1 = copy.deepcopy(dict_data)
    #     d2 = copy.deepcopy(dict_data)
    #     d3 = copy.deepcopy(dict_data)
        
    #     prb = SimpleTruckLoading()
    #     of_exact, sol_exact, comp_time_exact = prb.solve(
    #         dict_data,
    #         time_limit = 5,
    #         gap = 0.1 / 100,
    #         verbose=True
    #     )
        
    #     heu_1 = SimulationHeu(0.03, d1)
    #     of_heu1, sol_heu1, comp_time_heu1 = heu_1.solve(True)
        
    #     heu_2 = AddingOneByOneHeu(d2)
    #     of_heu2, sol_heu2, comp_time_heu2 = heu_2.solve()
        
    #     heu_3 = DP_Heu(d3)
    #     of_heu3, comp_time_heu3 = heu_3.solve()
        
    #     if of_exact != -1:
    #         gap1 = (of_exact - of_heu1) / of_exact * 100
    #         gap2 = (of_exact - of_heu2) / of_exact * 100
    #         gap3 = (of_exact - of_heu3) / of_exact * 100
    #         result_gap_1.append(gap1)
    #         result_gap_2.append(gap2)
    #         result_gap_3.append(gap3)
        
    # # plot comparison
    # plot_result_and_comparison(result_gap_1, 'simulation and greedy heuristic')
    # plot_result_and_comparison(result_gap_2, "simulation by 'adding' heuristic")
    # plot_result_and_comparison(result_gap_3, 'partial dynamic programming heuristic')
    
    # comparison of heuristic w.r.t. exact solution with increasing dimension of parameters
    file_output = open("./results/comparison_gurobi&heu.csv", "w")
    file_output.write("index, time gurobi[s], time heuristic1[s], gap1[%], time heuristic2[s], gap2[%], time heuristic3[s], gap3[%]\n")
    
    np.random.seed(3)
    base = sim_setting['num_products'] * sim_setting['num_destinations']
    for idx in range(5):
        temp_setteing = copy.deepcopy(sim_setting)
        inc_pro = idx * 3
        inc_des = idx * 2
        temp_setteing['num_products'] += inc_pro
        temp_setteing['num_destinations'] += inc_des
        scale = (temp_setteing['num_products'] * temp_setteing['num_destinations']) / base
        temp_setteing['low_capacity_compartments'] = int(temp_setteing['low_capacity_compartments'] * scale)
        temp_setteing['high_capacity_compartments'] = int(temp_setteing['high_capacity_compartments'] * scale)
        inst = Instance(temp_setteing)
        dict_data = inst.get_data()
        d1 = copy.deepcopy(dict_data)
        d2 = copy.deepcopy(dict_data)
        d3 = copy.deepcopy(dict_data)
        
        prb = SimpleTruckLoading()
        of_exact, sol_exact, comp_time_exact = prb.solve(
            dict_data,
            time_limit = 5,
            gap = 0.1 / 100,
            verbose=True
        )
        
        heu_1 = SimulationHeu(0.03, d1)
        of_heu1, sol_heu1, comp_time_heu1 = heu_1.solve(True)
        
        heu_2 = AddingOneByOneHeu(d2)
        of_heu2, sol_heu2, comp_time_heu2 = heu_2.solve()
        
        heu_3 = DP_Heu(d3)
        of_heu3, comp_time_heu3 = heu_3.solve()
        
        file_output.write("{}, {}, {}, {}, {}, {}, {}, {}\n".format(idx+1, comp_time_exact, 
                                                                    comp_time_heu1, (of_exact-of_heu1)/of_exact*100,
                                                                    comp_time_heu2, (of_exact-of_heu2)/of_exact*100,
                                                                    comp_time_heu3, (of_exact-of_heu3)/of_exact*100)
        )
        
    file_output.close()