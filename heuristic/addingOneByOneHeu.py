import numpy as np
import time

class AddingOneByOneHeu():
    def __init__(self, data):
        self.data = data
        self.state = []
        self.compartments = range(self.data['num_compartments']) # i
        self.destinations = range(self.data['num_destinations']) # j
        self.products = range(self.data['num_products']) # k
    
    def solve(self):
        start = time.time()
           
        self.comFullOrNot = [False for i in self.compartments]
        self.proSatisfiedOrNot = [False for i in self.products]
        currentState = []
        for j in self.destinations:
            temp_des = []
            for i in self.compartments:
                temp_com = []
                for k in self.products:
                    temp_com.append(0)
                temp_des.append(temp_com)
            currentState.append(temp_des)
        self.state = currentState
        
        while True:
            if sum(self.proSatisfiedOrNot) == len(self.proSatisfiedOrNot):
                break
            for j in self.destinations:
                for i in self.compartments:
                    if self.comFullOrNot[i]: continue
                    for k in self.products:
                        if self.proSatisfiedOrNot[k]: continue
                        self.state[j][i][k] += 1
                        AddingOneByOneHeu.check_product(self, j, k)
                        AddingOneByOneHeu.check_compartments(self, i)
                        if self.comFullOrNot[i]:
                            self.state[j][i][k] -= 1
        
        while True:
            if sum(self.comFullOrNot) == len(self.comFullOrNot):
                break      
            for j in self.destinations:
                for i in self.compartments:
                    if self.comFullOrNot[i]: continue
                    for k in self.products:
                        self.state[j][i][k] += 1
                        AddingOneByOneHeu.check_compartments(self, i)
                        if self.comFullOrNot[i]:
                            self.state[j][i][k] -= 1
        of_heu = 100
        for j in self.destinations:
            for k in self.products:
                temp = 0
                for i in self.compartments:
                    temp += self.state[j][i][k] / self.data['demand'][j][k]
                if temp < of_heu:
                    of_heu = temp
                
        end = time.time()
        comp_time = end - start
        
        return of_heu, self.state, comp_time
        
    def check_product(self, idx_j, idx_k):
        temp = 0
        for i in self.compartments: 
            temp += self.state[idx_j][i][idx_k]
        if temp >= self.data['demand'][idx_j][idx_k]:
            self.proSatisfiedOrNot[idx_k] = True
                
    def check_compartments(self, idx_i):
        temp = 0
        for j in self.destinations:
            for k in self.products:
                temp += self.state[j][idx_i][k] * self.data['size_package'][k]
        if temp >= self.data['capacity_compartments'][idx_i]:
            self.comFullOrNot[idx_i] = True
            
            