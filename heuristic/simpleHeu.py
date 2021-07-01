# -*- coding: utf-8 -*-
import time
import math
import logging
import functools
import numpy as np
import copy

class SimpleHeu():
    def __init__(self, epsilong, dict_data):
        self.t_lb = 0.0 # lower bound
        self.ite = 0 # iteration
        self.eps = epsilong # ending condition
        self.data = dict_data
        
    def solve(self, sortOrNot):
        # main algorithm
        start = time.time()
        
        # sort the product package sizes from big to small and modify the demand accordingly
        if sortOrNot:
            temp_list = np.sort(self.data['size_package'])[::-1]
            idx_list = np.argsort(self.data['size_package'])[::-1]
            self.data['size_package'] = temp_list
            for j in range(self.data['num_destinations']):
                self.data['demand'][j] = [self.data['demand'][j][i] for i in idx_list]
            
        C_total = functools.reduce(lambda x, y: x+y, self.data["capacity_compartments"])
        sum_pk_djk = 0
        for k in range(self.data['num_products']):
            for j in range(self.data['num_destinations']):
                sum_pk_djk += self.data['size_package'][k] * self.data['demand'][j][k]
        self.t_ub = C_total / sum_pk_djk # upper bound with relaxation
        self.t_l = (self.t_lb + self.t_ub) / 2
        
        while self.t_ub - self.t_lb > self.eps:
            of, sol_x, condition = SimpleHeu.sub_algorithm(self, self.data)
            if condition == 'yes': # there exists a feasible solution
                self.t_lb = self.t_l
                final_of = of
                final_sol = sol_x
                final_condition = condition
            elif condition == 'no': # there's no feasible solutions
                self.t_ub = self.t_l
            self.t_l = (self.t_lb + self.t_ub) / 2
            self.ite += 1
        
        end = time.time()
        comp_time = end - start
        
        return final_of, final_sol, comp_time
        
    def sub_algorithm(self, data_original):
        data_temp = copy.deepcopy(data_original)
        D_jk = [] # the demand for product k of destination j within time duration t_l
        S_jk = [] # the supply for product k to destination j
        for j in range(data_temp['num_destinations']):
            temp_D = []
            temp_S = []
            for k in range(data_temp['num_products']):
                temp_D.append(math.ceil(self.t_l * data_temp['demand'][j][k]))
                temp_S.append(0.0)
            D_jk.append(temp_D)
            S_jk.append(temp_S)
            
        X = []
        for j in range(data_temp['num_destinations']):
            temp_compartment = []
            for i in range(data_temp['num_compartments']):
                temp_product = []
                for k in range(data_temp['num_products']):
                    temp_product.append(0)
                temp_compartment.append(temp_product)
            X.append(temp_compartment)
                
        i = 0
        j = 0
        k = 0    
        while True:
            if S_jk[j][k] >= D_jk[j][k]:
                i = 0
                k += 1
                if k > data_temp['num_products']-1:
                    k = 0
                    j += 1
                    if j > data_temp['num_destinations']-1:
                        break
            else:
                if data_temp['size_package'][k] * (D_jk[j][k] - S_jk[j][k]) > data_temp['capacity_compartments'][i]:
                    X[j][i][k] = int(data_temp['capacity_compartments'][i] / data_temp['size_package'][k])
                    S_jk[j][k] += X[j][i][k]
                    data_temp['capacity_compartments'][i] -= data_temp['size_package'][k] * X[j][i][k]
                else:
                    X[j][i][k] = D_jk[j][k] - S_jk[j][k]
                    S_jk[j][k] += X[j][i][k]
                    data_temp['capacity_compartments'][i] -= data_temp['size_package'][k] * X[j][i][k]
                i += 1
                if i > data_temp['num_compartments']-1:
                    i = 0
                    k += 1
                    if k > data_temp['num_products']-1:
                        k = 0
                        j += 1
                        if j > data_temp['num_destinations']-1:
                            break
        
        output = "yes"
        for j in  range(data_temp['num_destinations']):
            for k in range(data_temp['num_products']):
                if D_jk[j][k] > S_jk[j][k]:
                    output = "no"
                    break
        if output == "yes":
            t_s = S_jk[0][0] / data_temp['demand'][0][0]
            for j in  range(data_temp['num_destinations']):
                for k in range(data_temp['num_products']):
                    if data_temp['demand'] == 0: continue
                    temp = S_jk[j][k] / data_temp['demand'][j][k]
                    if temp < t_s:
                        t_s = temp
            if t_s > self.t_l:
                 self.t_l = t_s
    
        return self.t_l, X, output