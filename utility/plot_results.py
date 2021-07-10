import numpy as np
import matplotlib.pyplot as plt


def plot_result_and_comparison(result_gap, name, result_exact=None, result_heu=None):
    
    # output the gap occurence histogram with respect to seeds
    plt.figure()
    plt.hist(result_gap, bins=100, alpha=0.8)
    plt.xlabel('gap[%]')
    plt.ylabel("occurrence")
    # plt.title(f'histogram of gap for {name} method w.r.t. exact solution')
    plt.title(f'gap for {name}')
    plt.savefig(f"./results/hist_{name}.png")
    plt.close()
    
    # useless but worth keeping
    # plt.figure()
    # plt.plot(result_exact, label = 'exact solution')
    # plt.plot(result_heu, label ='heuristic solution')
    # plt.xlabel('seed')
    # plt.ylabel("objective function")
    # plt.legend()
    # plt.savefig(f"./results/result.png")
    # plt.close()