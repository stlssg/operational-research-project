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

def idx_max(a, b, c):
    output = [0,0,0]
    if max([a,b,c]) == a: output[0] += 1
    if max([a,b,c]) == b: output[1] += 1
    if max([a,b,c]) == c: output[2] += 1
    return output

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
    
    np.random.seed(10)
    base = sim_setting['num_products'] * sim_setting['num_destinations']
    for idx in range(5):
        temp_setting = copy.deepcopy(sim_setting)
        inc_pro = idx * 3
        inc_des = idx * 2
        temp_setting['num_products'] += inc_pro
        temp_setting['num_destinations'] += inc_des
        scale = (temp_setting['num_products'] * temp_setting['num_destinations']) / base
        temp_setting['low_capacity_compartments'] = int(temp_setting['low_capacity_compartments'] * scale)
        temp_setting['high_capacity_compartments'] = int(temp_setting['high_capacity_compartments'] * scale)
        inst = Instance(temp_setting)
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
    
    # # comparison with different input for exact solution
    # file_output = open("./results/comparison_gurobi_different_inputs.csv", "w")
    # file_output.write("descripsion, objective function result\n")
    # file_output.write("\n")
    # np.random.seed(0)
    # inst = Instance(sim_setting)
    # dict_data = inst.get_data()
    
    # # case 1, all parameters are same except for compartment capacity
    # for reduction in range(1, 4):
    #     temp_data = copy.deepcopy(dict_data)
    #     for i in range(temp_data['num_compartments']):
    #         temp_data['capacity_compartments'][i] = int(temp_data['capacity_compartments'][i] / reduction)
            
    #     prb = SimpleTruckLoading()
    #     of_exact, sol_exact, comp_time_exact = prb.solve(
    #         temp_data,
    #         time_limit = 5,
    #         gap = 0.1 / 100,
    #         verbose=True
    #     )
    #     # print(of_exact, sol_exact, comp_time_exact)
    #     file_output.write("{}, {}\n".format(list(temp_data['capacity_compartments']), of_exact))
    # file_output.write("\n")
        
    # # case 2, all parameters are same except for product size being very distinct
    # temp_data = copy.deepcopy(dict_data)
    
    # prb = SimpleTruckLoading()
    # of_exact, sol_exact, comp_time_exact = prb.solve(
    #     temp_data,
    #     time_limit = 5,
    #     gap = 0.1 / 100,
    #     verbose=True
    # )
    # # print(of_exact, sol_exact, comp_time_exact)
    # file_output.write("{}, {}\n".format(list(temp_data['size_package']), of_exact))
    
    # temp = temp_data['size_package'][0] - 1
    # temp_data['size_package'][0] = 1
    # temp_data['size_package'][2] += temp
    
    # prb = SimpleTruckLoading()
    # of_exact, sol_exact, comp_time_exact = prb.solve(
    #     temp_data,
    #     time_limit = 5,
    #     gap = 0.1 / 100,
    #     verbose=True
    # )
    # # print(of_exact, sol_exact, comp_time_exact)
    # file_output.write("{}, {}\n".format(list(temp_data['size_package']), of_exact))
    # file_output.write("\n")
    
    # # case 3, all parameters are same except for demands being very distinct
    # temp_data = copy.deepcopy(dict_data)
    # prb = SimpleTruckLoading()
    # of_exact, sol_exact, comp_time_exact = prb.solve(
    #     temp_data,
    #     time_limit = 5,
    #     gap = 0.1 / 100,
    #     verbose=True
    # )
    # # print(of_exact, sol_exact, comp_time_exact)
    # file_output.write("{}, {}\n".format(list(temp_data['demand']), of_exact))
    
    # for j in range(temp_data['num_destinations']):
    #     temp = temp_data['demand'][j][0] - 1
    #     temp_data['demand'][j][0] = 1
    #     temp_data['demand'][j][2] += temp
        
    # prb = SimpleTruckLoading()
    # of_exact, sol_exact, comp_time_exact = prb.solve(
    #     temp_data,
    #     time_limit = 5,
    #     gap = 0.1 / 100,
    #     verbose=True
    # )
    # # print(of_exact, sol_exact, comp_time_exact)
    # file_output.write("{}, {}\n".format(list(temp_data['demand']), of_exact))
    
    # file_output.close()
    
    # # worst case analysis
    # file_output = open("./results/worst_case_comparison_among_heuristics.csv", "w")
    # file_output.write("descripsion, number of higher result of heu1, number of higher result of heu2, number of higher result of heu3\n")
    # file_output.write("\n")
    
    # # case 1, very distinct caompartment capacity with [200, 800, 1400]
    # num_higher_value = [0, 0, 0]
    # for seed in range(0, 101):
    #     np.random.seed(seed)
    #     inst = Instance(sim_setting)
    #     dict_data = inst.get_data()
    #     dict_data['capacity_compartments'] = [200, 800, 1400]
    #     d1 = copy.deepcopy(dict_data)
    #     d2 = copy.deepcopy(dict_data)
    #     d3 = copy.deepcopy(dict_data)
        
    #     heu_1 = SimulationHeu(0.03, d1)
    #     of_heu1, sol_heu1, comp_time_heu1 = heu_1.solve(True)
        
    #     heu_2 = AddingOneByOneHeu(d2)
    #     of_heu2, sol_heu2, comp_time_heu2 = heu_2.solve()
        
    #     heu_3 = DP_Heu(d3)
    #     of_heu3, comp_time_heu3 = heu_3.solve()
        
    #     temp = idx_max(of_heu1, of_heu2, of_heu3)
    #     num_higher_value[0] += temp[0]
    #     num_higher_value[1] += temp[1]
    #     num_higher_value[2] += temp[2]
        
    # file_output.write("{}, {}, {}, {}\n".format('distinct compartment capacity', num_higher_value[0], num_higher_value[1], num_higher_value[2]))
    # file_output.write("\n")
    
    # # case 2, very distinct package size
    # num_higher_value = [0, 0, 0]
    # for seed in range(0, 101):
    #     np.random.seed(seed)
    #     inst = Instance(sim_setting)
    #     dict_data = inst.get_data()
    #     dict_data['size_package'] = [1, 20, 39]
    #     d1 = copy.deepcopy(dict_data)
    #     d2 = copy.deepcopy(dict_data)
    #     d3 = copy.deepcopy(dict_data)
        
    #     heu_1 = SimulationHeu(0.03, d1)
    #     of_heu1, sol_heu1, comp_time_heu1 = heu_1.solve(True)
        
    #     heu_2 = AddingOneByOneHeu(d2)
    #     of_heu2, sol_heu2, comp_time_heu2 = heu_2.solve()
        
    #     heu_3 = DP_Heu(d3)
    #     of_heu3, comp_time_heu3 = heu_3.solve()
        
    #     temp = idx_max(of_heu1, of_heu2, of_heu3)
    #     num_higher_value[0] += temp[0]
    #     num_higher_value[1] += temp[1]
    #     num_higher_value[2] += temp[2]
        
    # file_output.write("{}, {}, {}, {}\n".format('distinct package size', num_higher_value[0], num_higher_value[1], num_higher_value[2]))
    # file_output.write("\n")
    
    # # case 3, very distinct demand
    # num_higher_value = [0, 0, 0]
    # for seed in range(0, 101):
    #     np.random.seed(seed)
    #     inst = Instance(sim_setting)
    #     dict_data = inst.get_data()
    #     dict_data['demand'][0] = [1, 10, 35]
    #     dict_data['demand'][1] = [1, 15, 30]
    #     d1 = copy.deepcopy(dict_data)
    #     d2 = copy.deepcopy(dict_data)
    #     d3 = copy.deepcopy(dict_data)
        
    #     heu_1 = SimulationHeu(0.03, d1)
    #     of_heu1, sol_heu1, comp_time_heu1 = heu_1.solve(True)
        
    #     heu_2 = AddingOneByOneHeu(d2)
    #     of_heu2, sol_heu2, comp_time_heu2 = heu_2.solve()
        
    #     heu_3 = DP_Heu(d3)
    #     of_heu3, comp_time_heu3 = heu_3.solve()
        
    #     temp = idx_max(of_heu1, of_heu2, of_heu3)
    #     num_higher_value[0] += temp[0]
    #     num_higher_value[1] += temp[1]
    #     num_higher_value[2] += temp[2]
    
    # file_output.write("{}, {}, {}, {}\n".format('distinct demand', num_higher_value[0], num_higher_value[1], num_higher_value[2]))
    # file_output.write("\n")
    
    # file_output.close()