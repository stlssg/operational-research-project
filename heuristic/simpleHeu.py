# -*- coding: utf-8 -*-
import time
import math
import logging
import functools

class SimpleHeu():
    def __init__(self, epsilong, dict_data):
        self.t_lb = 1.0 # lower bound
        self.ite = 0 # iteration
        self.eps = epsilong # ending condition
        self.data = dict_data
        
        
    def solve(self):
        # main algorithm
        start = time.time()
        C_total = functools.reduce(lambda x, y: x+y, self.data["capacity_compartments"])
        sum_pk_djk = 0
        for k in range(self.data['size_package']):
            for j in range(self.data['num_destinations']):
                sum_pk_djk += self.data['size_package'][k] * self.data['demand'][j][k]
        self.t_ub = C_total / sum_pk_djk # upper bound with relaxation
        t_l = (self.t_lb + self.t_ub) / 2
        
        while self.t_ub - self.t_lb > self.eps:
            of, sol_x, condition = SimpleHeu.sub_algorithm()
            if condition == 'yes': # there exists a feasible solution
                self.t_lb = t_l
            elif condition == 'no': # there's no feasible solutions
                self.t_ub = t_l
            t_l = (self.t_lb + self.t_ub) / 2
            self.ite += 1
        
        end = time.time()
        comp_time = end - start
        
        return of, sol_x, comp_time
        
    def sub_algorithm(self):
        pass
