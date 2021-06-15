#!/usr/bin/python3
# -*- coding: utf-8 -*-
import json
import logging
import numpy as np
from simulator.instance import Instance
from solver.simpleTruckLoading import SimpleTruckLoading
from heuristic.simpleHeu import SimpleHeu
from utility.plot_results import plot_comparison_hist

if __name__ == '__main__':
    np.random.seed(0)
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
    
    prb = SimpleTruckLoading()
    of_exact, sol_exact, comp_time_exact = prb.solve(
        dict_data,
        time_limit = 10,
        gap = 0.1 / 100,
        verbose=True
    )
    print(of_exact, sol_exact, comp_time_exact)
    
    heu_1 = SimpleHeu(0.03, dict_data)
    of_heu, sol_heu, comp_time_heu = heu_1.solve()
    print(of_heu, sol_heu, comp_time_heu)

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
