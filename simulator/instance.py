# -*- coding: utf-8 -*-
import logging
import numpy as np
from numpy.random import randint
import random
random.seed(0)

class Instance():
    def __init__(self, sim_setting):
        logging.info("starting simulation...")
        self.num_compartments = sim_setting['num_compartments']
        self.num_products = sim_setting['num_products']
        self.num_destinations = sim_setting['num_destinations']
        self.capacity_compartments = np.random.uniform(
            sim_setting['low_capacity_compartments'],
            sim_setting['high_capacity_compartments'],
            sim_setting['num_compartments']
        )
        #self.capacity_compartments = [905.0, 810.0, 805.0, 760.0]
        self.size_package = np.random.uniform(
            sim_setting['low_size_package'],
            sim_setting['high_size_package'],
            sim_setting['num_products']
        )
        #self.size_package = [30.0, 10.0, 20.0]
        self.demand = []
        for idx in range(sim_setting['num_destinations']):
            low_demand = random.randint(0,sim_setting['low_demand'])
            high_demand = random.randint(sim_setting['low_demand']+1, sim_setting['high_demand'])
            demand_for_destination = np.around(np.random.uniform(
                low_demand,
                high_demand,
                sim_setting['num_products']
            ))
            self.demand.append(demand_for_destination)
        #self.demand = [[30, 9, 5],[4, 14, 27]]

        logging.info(f"num_compartments: {self.num_compartments}")
        logging.info(f"num_products: {self.num_products}")
        logging.info(f"num_destinations: {self.num_destinations}")
        logging.info(f"capacity_compartments: {self.capacity_compartments}")
        logging.info(f"size_package: {self.size_package}")
        logging.info(f"demand: {self.demand}")
        logging.info("simulation end")

    def get_data(self):
        logging.info("getting data from instance...")
        return {
            "num_compartments": self.num_compartments,
            "num_products": self.num_products,
            "num_destinations": self.num_destinations,
            "capacity_compartments": self.capacity_compartments,
            "size_package": self.size_package,
            "demand": self.demand
        }
