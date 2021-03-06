import json
import logging
import numpy as np
from simulator.instance import Instance
from solver.simpleTruckLoading import SimpleTruckLoading
from heuristic.simulationHeu import SimulationHeu
from heuristic.addingOneByOneHeu import AddingOneByOneHeu
from heuristic.dpHeu import DP_Heu
# from utility.plot_results import plot_result_and_comparison
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
    
    np.random.seed(0)
    inst = Instance(sim_setting)
    dict_data = inst.get_data()
    d1 = copy.deepcopy(dict_data)
    d2 = copy.deepcopy(dict_data)
    d3 = copy.deepcopy(dict_data)
    print(dict_data)
    
    # exact solution from gurobi
    prb = SimpleTruckLoading()
    of_exact, sol_exact, comp_time_exact = prb.solve(
        dict_data,
        time_limit = 5,
        gap = 0.1 / 100,
        verbose=True
    )
    print(of_exact, sol_exact, comp_time_exact)
    
    # results from heuristic method of simulation with greedy algorithm 
    heu_1 = SimulationHeu(0.03, d1)
    of_heu1, sol_heu1, comp_time_heu1 = heu_1.solve(True)
    print(of_heu1, sol_heu1, comp_time_heu1)
    
    # results from heuristic method of simulation with fair supply
    heu_2 = AddingOneByOneHeu(d2)
    of_heu2, sol_heu2, comp_time_heu2 = heu_2.solve()
    print(of_heu2, sol_heu2, comp_time_heu2)
    
    # results from heuristic method of partial dynamic programming
    heu_3 = DP_Heu(d3)
    of_heu3, comp_time_heu3 = heu_3.solve()
    print(of_heu3, comp_time_heu3)

    # printing results in a file
    file_output = open("./results/basic_result_4_all_methods.csv", "w")
    file_output.write("method, objective function result, computational time, solution\n")
    file_output.write("{}, {}, {}, {}\n".format("exact_solution_from_gurobi", of_exact, comp_time_exact, sol_exact))
    file_output.write("{}, {}, {}, {}\n".format("simulation and greedy heuristic", of_heu1, comp_time_heu1, sol_heu1))
    file_output.write("{}, {}, {}, {}\n".format("simulation by 'adding' heuristic", of_heu2, comp_time_heu2, sol_heu2))
    file_output.write("{}, {}, {}, {}\n".format("partial dynamic programming heuristic", of_heu3, comp_time_heu3, '-'))
    file_output.close()