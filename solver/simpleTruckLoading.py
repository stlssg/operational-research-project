# -*- coding: utf-8 -*-
import time
import logging
import gurobipy as gp
from gurobipy import GRB


class SimpleTruckLoading():
    def __init__(self):
        pass

    def solve(self, dict_data, time_limit=None, gap=None, verbose=False):
        compartments = range(dict_data['num_compartments']) # i
        destinations = range(dict_data['num_destinations']) # j
        products = range(dict_data['num_products']) # k

        problem_name = "SimpleTruckLoadingProblem"
        logging.info("{}".format(problem_name))

        model = gp.Model(problem_name)
        X = model.addVars(
            dict_data['num_compartments'], dict_data['num_destinations'], dict_data['num_products'],
            lb=0,
            vtype=GRB.INTEGER,
            name='X'
        )
        T = model.addVar(lb = 0.0, vtype = GRB.CONTINUOUS, name = "replenishment_time")
        
        obj_funct = T
        model.setObjective(obj_funct, GRB.MAXIMIZE)
        
        for j in destinations:
            for k in products:
                model.addConstr(
                    T * dict_data['demand'][j][k] <= gp.quicksum(X[i,j,k] for i in compartments),
                    f"time_constraint_{j}_{k}_for_minimum"
                )
                
        for i in compartments:
            model.addConstr(
                gp.quicksum(dict_data["size_package"][k] * X[i,j,k] for k in products for j in destinations) <= dict_data["capacity_compartments"][i],
                f"capacity_constraint_{i}_compartments"
            )
            
        for j in destinations:
            for k in products:
                model.addConstr(
                    T * dict_data['demand'][j][k] <= gp.quicksum(X[i,j,k] for i in compartments),
                    f"demand_rate_constraint_{j}_{k}_for_total_delivery_quantity"
                )
            
        model.update()
        if gap:
            model.setParam('MIPgap', gap)
        if time_limit:
            model.setParam(GRB.Param.TimeLimit, time_limit)
        if verbose:
            model.setParam('OutputFlag', 1)
        else:
            model.setParam('OutputFlag', 0)
        model.setParam('LogFile', './logs/gurobi.log')
        model.write("./logs/model.lp")

        start = time.time()
        model.optimize()
        end = time.time()
        comp_time = end - start
        
        sol = []
        of = -1
        if model.status == GRB.Status.OPTIMAL:
            for j in destinations:
                temp_compartment = []
                for i in compartments:
                    temp_product = []
                    for k in products:
                        grb_var = model.getVarByName(f"X[{i},{j},{k}]")
                        temp_product.append(int(grb_var.X))
                    temp_compartment.append(temp_product)
                sol.append(temp_compartment)
            of = model.getObjective().getValue()
        return of, sol, comp_time
