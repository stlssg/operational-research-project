#!/usr/bin/python3
# -*- coding: utf-8 -*-
import json
import logging
import numpy as np
from simulator.instance import Instance
from solver.simpleTruckLoading import SimpleTruckLoading
from heuristic.simpleHeu import SimpleHeu
from utility.plot_results import plot_comparison_hist

np.random.seed(0)

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

    inst = Instance(sim_setting)
    dict_data = inst.get_data()
    print(dict_data)
    
    num_repetition = 100
    prb = SimpleTruckLoading()
    of_exact, sol_exact, comp_time_exact = prb.solve(
        dict_data,
        time_limit = 10,
        gap = 0.1 / 100,
        verbose=True
    )
    print(of_exact, sol_exact, comp_time_exact)
    
    
    '''
    # Reward generation
    n_scenarios = 5
    reward = sam.sample_stoch(
        inst,
        n_scenarios=n_scenarios
    )

    heu = SimpleHeu()
    of_heu, sol_heu, comp_time_heu = heu.solve(
        dict_data,
        reward,
        n_scenarios,
    )
    print(of_heu, sol_heu, comp_time_heu)

    # mean_reward = sam.sample_ev(
    #     inst,
    #     n_scenarios=n_scenarios
    # )
    # print(mean_reward)
    '''


    '''
    heu = SimpleHeu(2)
    of_heu, sol_heu, comp_time_heu = heu.solve(
        dict_data
    )
    print(of_heu, sol_heu, comp_time_heu)

    # printing results of a file
    file_output = open(
        "./results/exp_general_table.csv",
        "w"
    )
    file_output.write("method, of, sol, time\n")
    file_output.write("{}, {}, {}, {}\n".format(
        "heu", of_heu, sol_heu, comp_time_heu
    ))
    file_output.write("{}, {}, {}, {}\n".format(
        "exact", of_exact, sol_exact, comp_time_exact
    ))
    file_output.close()
    '''
