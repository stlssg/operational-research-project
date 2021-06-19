# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt


def plot_result_and_comparison(result_exact, result_heu, result_gap):
    plt.figure()
    plt.hist(result_gap, bins=100, alpha=0.8)
    plt.xlabel('gap[%]')
    plt.ylabel("occurencies")
    plt.savefig(f"./results/hist_gap.png")
    plt.close()
    
    plt.figure()
    plt.plot(result_exact, label = 'exact solution')
    plt.plot(result_heu, label ='heuristic solution')
    plt.xlabel('seed')
    plt.ylabel("objective function")
    plt.legend()
    plt.savefig(f"./results/result.png")
    plt.close()