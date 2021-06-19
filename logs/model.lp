\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   - X[3,0,0] + 23 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   - X[3,0,1] + 26 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   - X[3,0,2] + 24 replenishment_time <= 0
 time_constraint_0_3_for_minimum: - X[0,0,3] - X[1,0,3] - X[2,0,3]
   - X[3,0,3] + 9 replenishment_time <= 0
 time_constraint_0_4_for_minimum: - X[0,0,4] - X[1,0,4] - X[2,0,4]
   - X[3,0,4] + 22 replenishment_time <= 0
 time_constraint_0_5_for_minimum: - X[0,0,5] - X[1,0,5] - X[2,0,5]
   - X[3,0,5] + 4 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   - X[3,1,0] + 22 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   - X[3,1,1] + 9 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   - X[3,1,2] + 5 replenishment_time <= 0
 time_constraint_1_3_for_minimum: - X[0,1,3] - X[1,1,3] - X[2,1,3]
   - X[3,1,3] + 26 replenishment_time <= 0
 time_constraint_1_4_for_minimum: - X[0,1,4] - X[1,1,4] - X[2,1,4]
   - X[3,1,4] + 23 replenishment_time <= 0
 time_constraint_1_5_for_minimum: - X[0,1,5] - X[1,1,5] - X[2,1,5]
   - X[3,1,5] + 15 replenishment_time <= 0
 time_constraint_2_0_for_minimum: - X[0,2,0] - X[1,2,0] - X[2,2,0]
   - X[3,2,0] + 10 replenishment_time <= 0
 time_constraint_2_1_for_minimum: - X[0,2,1] - X[1,2,1] - X[2,2,1]
   - X[3,2,1] + 6 replenishment_time <= 0
 time_constraint_2_2_for_minimum: - X[0,2,2] - X[1,2,2] - X[2,2,2]
   - X[3,2,2] + 5 replenishment_time <= 0
 time_constraint_2_3_for_minimum: - X[0,2,3] - X[1,2,3] - X[2,2,3]
   - X[3,2,3] + 7 replenishment_time <= 0
 time_constraint_2_4_for_minimum: - X[0,2,4] - X[1,2,4] - X[2,2,4]
   - X[3,2,4] + 5 replenishment_time <= 0
 time_constraint_2_5_for_minimum: - X[0,2,5] - X[1,2,5] - X[2,2,5]
   - X[3,2,5] + 7 replenishment_time <= 0
 time_constraint_3_0_for_minimum: - X[0,3,0] - X[1,3,0] - X[2,3,0]
   - X[3,3,0] + 22 replenishment_time <= 0
 time_constraint_3_1_for_minimum: - X[0,3,1] - X[1,3,1] - X[2,3,1]
   - X[3,3,1] + 12 replenishment_time <= 0
 time_constraint_3_2_for_minimum: - X[0,3,2] - X[1,3,2] - X[2,3,2]
   - X[3,3,2] + 28 replenishment_time <= 0
 time_constraint_3_3_for_minimum: - X[0,3,3] - X[1,3,3] - X[2,3,3]
   - X[3,3,3] + 24 replenishment_time <= 0
 time_constraint_3_4_for_minimum: - X[0,3,4] - X[1,3,4] - X[2,3,4]
   - X[3,3,4] + 23 replenishment_time <= 0
 time_constraint_3_5_for_minimum: - X[0,3,5] - X[1,3,5] - X[2,3,5]
   - X[3,3,5] + 16 replenishment_time <= 0
 time_constraint_4_0_for_minimum: - X[0,4,0] - X[1,4,0] - X[2,4,0]
   - X[3,4,0] + 2 replenishment_time <= 0
 time_constraint_4_1_for_minimum: - X[0,4,1] - X[1,4,1] - X[2,4,1]
   - X[3,4,1] + 20 replenishment_time <= 0
 time_constraint_4_2_for_minimum: - X[0,4,2] - X[1,4,2] - X[2,4,2]
   - X[3,4,2] + 24 replenishment_time <= 0
 time_constraint_4_3_for_minimum: - X[0,4,3] - X[1,4,3] - X[2,4,3]
   - X[3,4,3] + 8 replenishment_time <= 0
 time_constraint_4_4_for_minimum: - X[0,4,4] - X[1,4,4] - X[2,4,4]
   - X[3,4,4] + 17 replenishment_time <= 0
 time_constraint_4_5_for_minimum: - X[0,4,5] - X[1,4,5] - X[2,4,5]
   - X[3,4,5] + 7 replenishment_time <= 0
 time_constraint_5_0_for_minimum: - X[0,5,0] - X[1,5,0] - X[2,5,0]
   - X[3,5,0] + 9 replenishment_time <= 0
 time_constraint_5_1_for_minimum: - X[0,5,1] - X[1,5,1] - X[2,5,1]
   - X[3,5,1] + 14 replenishment_time <= 0
 time_constraint_5_2_for_minimum: - X[0,5,2] - X[1,5,2] - X[2,5,2]
   - X[3,5,2] + 21 replenishment_time <= 0
 time_constraint_5_3_for_minimum: - X[0,5,3] - X[1,5,3] - X[2,5,3]
   - X[3,5,3] + 17 replenishment_time <= 0
 time_constraint_5_4_for_minimum: - X[0,5,4] - X[1,5,4] - X[2,5,4]
   - X[3,5,4] + 25 replenishment_time <= 0
 time_constraint_5_5_for_minimum: - X[0,5,5] - X[1,5,5] - X[2,5,5]
   - X[3,5,5] + 8 replenishment_time <= 0
 time_constraint_6_0_for_minimum: - X[0,6,0] - X[1,6,0] - X[2,6,0]
   - X[3,6,0] + 27 replenishment_time <= 0
 time_constraint_6_1_for_minimum: - X[0,6,1] - X[1,6,1] - X[2,6,1]
   - X[3,6,1] + 11 replenishment_time <= 0
 time_constraint_6_2_for_minimum: - X[0,6,2] - X[1,6,2] - X[2,6,2]
   - X[3,6,2] + 10 replenishment_time <= 0
 time_constraint_6_3_for_minimum: - X[0,6,3] - X[1,6,3] - X[2,6,3]
   - X[3,6,3] + 23 replenishment_time <= 0
 time_constraint_6_4_for_minimum: - X[0,6,4] - X[1,6,4] - X[2,6,4]
   - X[3,6,4] + 25 replenishment_time <= 0
 time_constraint_6_5_for_minimum: - X[0,6,5] - X[1,6,5] - X[2,6,5]
   - X[3,6,5] + 28 replenishment_time <= 0
 time_constraint_7_0_for_minimum: - X[0,7,0] - X[1,7,0] - X[2,7,0]
   - X[3,7,0] + 6 replenishment_time <= 0
 time_constraint_7_1_for_minimum: - X[0,7,1] - X[1,7,1] - X[2,7,1]
   - X[3,7,1] + 8 replenishment_time <= 0
 time_constraint_7_2_for_minimum: - X[0,7,2] - X[1,7,2] - X[2,7,2]
   - X[3,7,2] + 12 replenishment_time <= 0
 time_constraint_7_3_for_minimum: - X[0,7,3] - X[1,7,3] - X[2,7,3]
   - X[3,7,3] + 11 replenishment_time <= 0
 time_constraint_7_4_for_minimum: - X[0,7,4] - X[1,7,4] - X[2,7,4]
   - X[3,7,4] + 8 replenishment_time <= 0
 time_constraint_7_5_for_minimum: - X[0,7,5] - X[1,7,5] - X[2,7,5]
   - X[3,7,5] + 9 replenishment_time <= 0
 capacity_constraint_0_compartments: 22.6414068655387 X[0,0,0]
   + 15.02860591680943 X[0,0,1] + 18.57423681287362 X[0,0,2]
   + 24.09694885663908 X[0,0,3] + 19.56080985458253 X[0,0,4]
   + 24.81802709158329 X[0,0,5] + 22.6414068655387 X[0,1,0]
   + 15.02860591680943 X[0,1,1] + 18.57423681287362 X[0,1,2]
   + 24.09694885663908 X[0,1,3] + 19.56080985458253 X[0,1,4]
   + 24.81802709158329 X[0,1,5] + 22.6414068655387 X[0,2,0]
   + 15.02860591680943 X[0,2,1] + 18.57423681287362 X[0,2,2]
   + 24.09694885663908 X[0,2,3] + 19.56080985458253 X[0,2,4]
   + 24.81802709158329 X[0,2,5] + 22.6414068655387 X[0,3,0]
   + 15.02860591680943 X[0,3,1] + 18.57423681287362 X[0,3,2]
   + 24.09694885663908 X[0,3,3] + 19.56080985458253 X[0,3,4]
   + 24.81802709158329 X[0,3,5] + 22.6414068655387 X[0,4,0]
   + 15.02860591680943 X[0,4,1] + 18.57423681287362 X[0,4,2]
   + 24.09694885663908 X[0,4,3] + 19.56080985458253 X[0,4,4]
   + 24.81802709158329 X[0,4,5] + 22.6414068655387 X[0,5,0]
   + 15.02860591680943 X[0,5,1] + 18.57423681287362 X[0,5,2]
   + 24.09694885663908 X[0,5,3] + 19.56080985458253 X[0,5,4]
   + 24.81802709158329 X[0,5,5] + 22.6414068655387 X[0,6,0]
   + 15.02860591680943 X[0,6,1] + 18.57423681287362 X[0,6,2]
   + 24.09694885663908 X[0,6,3] + 19.56080985458253 X[0,6,4]
   + 24.81802709158329 X[0,6,5] + 22.6414068655387 X[0,7,0]
   + 15.02860591680943 X[0,7,1] + 18.57423681287362 X[0,7,2]
   + 24.09694885663908 X[0,7,3] + 19.56080985458253 X[0,7,4]
   + 24.81802709158329 X[0,7,5] <= 1689.526451370334
 capacity_constraint_1_compartments: 22.6414068655387 X[1,0,0]
   + 15.02860591680943 X[1,0,1] + 18.57423681287362 X[1,0,2]
   + 24.09694885663908 X[1,0,3] + 19.56080985458253 X[1,0,4]
   + 24.81802709158329 X[1,0,5] + 22.6414068655387 X[1,1,0]
   + 15.02860591680943 X[1,1,1] + 18.57423681287362 X[1,1,2]
   + 24.09694885663908 X[1,1,3] + 19.56080985458253 X[1,1,4]
   + 24.81802709158329 X[1,1,5] + 22.6414068655387 X[1,2,0]
   + 15.02860591680943 X[1,2,1] + 18.57423681287362 X[1,2,2]
   + 24.09694885663908 X[1,2,3] + 19.56080985458253 X[1,2,4]
   + 24.81802709158329 X[1,2,5] + 22.6414068655387 X[1,3,0]
   + 15.02860591680943 X[1,3,1] + 18.57423681287362 X[1,3,2]
   + 24.09694885663908 X[1,3,3] + 19.56080985458253 X[1,3,4]
   + 24.81802709158329 X[1,3,5] + 22.6414068655387 X[1,4,0]
   + 15.02860591680943 X[1,4,1] + 18.57423681287362 X[1,4,2]
   + 24.09694885663908 X[1,4,3] + 19.56080985458253 X[1,4,4]
   + 24.81802709158329 X[1,4,5] + 22.6414068655387 X[1,5,0]
   + 15.02860591680943 X[1,5,1] + 18.57423681287362 X[1,5,2]
   + 24.09694885663908 X[1,5,3] + 19.56080985458253 X[1,5,4]
   + 24.81802709158329 X[1,5,5] + 22.6414068655387 X[1,6,0]
   + 15.02860591680943 X[1,6,1] + 18.57423681287362 X[1,6,2]
   + 24.09694885663908 X[1,6,3] + 19.56080985458253 X[1,6,4]
   + 24.81802709158329 X[1,6,5] + 22.6414068655387 X[1,7,0]
   + 15.02860591680943 X[1,7,1] + 18.57423681287362 X[1,7,2]
   + 24.09694885663908 X[1,7,3] + 19.56080985458253 X[1,7,4]
   + 24.81802709158329 X[1,7,5] <= 1545.309484226345
 capacity_constraint_2_compartments: 22.6414068655387 X[2,0,0]
   + 15.02860591680943 X[2,0,1] + 18.57423681287362 X[2,0,2]
   + 24.09694885663908 X[2,0,3] + 19.56080985458253 X[2,0,4]
   + 24.81802709158329 X[2,0,5] + 22.6414068655387 X[2,1,0]
   + 15.02860591680943 X[2,1,1] + 18.57423681287362 X[2,1,2]
   + 24.09694885663908 X[2,1,3] + 19.56080985458253 X[2,1,4]
   + 24.81802709158329 X[2,1,5] + 22.6414068655387 X[2,2,0]
   + 15.02860591680943 X[2,2,1] + 18.57423681287362 X[2,2,2]
   + 24.09694885663908 X[2,2,3] + 19.56080985458253 X[2,2,4]
   + 24.81802709158329 X[2,2,5] + 22.6414068655387 X[2,3,0]
   + 15.02860591680943 X[2,3,1] + 18.57423681287362 X[2,3,2]
   + 24.09694885663908 X[2,3,3] + 19.56080985458253 X[2,3,4]
   + 24.81802709158329 X[2,3,5] + 22.6414068655387 X[2,4,0]
   + 15.02860591680943 X[2,4,1] + 18.57423681287362 X[2,4,2]
   + 24.09694885663908 X[2,4,3] + 19.56080985458253 X[2,4,4]
   + 24.81802709158329 X[2,4,5] + 22.6414068655387 X[2,5,0]
   + 15.02860591680943 X[2,5,1] + 18.57423681287362 X[2,5,2]
   + 24.09694885663908 X[2,5,3] + 19.56080985458253 X[2,5,4]
   + 24.81802709158329 X[2,5,5] + 22.6414068655387 X[2,6,0]
   + 15.02860591680943 X[2,6,1] + 18.57423681287362 X[2,6,2]
   + 24.09694885663908 X[2,6,3] + 19.56080985458253 X[2,6,4]
   + 24.81802709158329 X[2,6,5] + 22.6414068655387 X[2,7,0]
   + 15.02860591680943 X[2,7,1] + 18.57423681287362 X[2,7,2]
   + 24.09694885663908 X[2,7,3] + 19.56080985458253 X[2,7,4]
   + 24.81802709158329 X[2,7,5] <= 1618.884028878226
 capacity_constraint_3_compartments: 22.6414068655387 X[3,0,0]
   + 15.02860591680943 X[3,0,1] + 18.57423681287362 X[3,0,2]
   + 24.09694885663908 X[3,0,3] + 19.56080985458253 X[3,0,4]
   + 24.81802709158329 X[3,0,5] + 22.6414068655387 X[3,1,0]
   + 15.02860591680943 X[3,1,1] + 18.57423681287362 X[3,1,2]
   + 24.09694885663908 X[3,1,3] + 19.56080985458253 X[3,1,4]
   + 24.81802709158329 X[3,1,5] + 22.6414068655387 X[3,2,0]
   + 15.02860591680943 X[3,2,1] + 18.57423681287362 X[3,2,2]
   + 24.09694885663908 X[3,2,3] + 19.56080985458253 X[3,2,4]
   + 24.81802709158329 X[3,2,5] + 22.6414068655387 X[3,3,0]
   + 15.02860591680943 X[3,3,1] + 18.57423681287362 X[3,3,2]
   + 24.09694885663908 X[3,3,3] + 19.56080985458253 X[3,3,4]
   + 24.81802709158329 X[3,3,5] + 22.6414068655387 X[3,4,0]
   + 15.02860591680943 X[3,4,1] + 18.57423681287362 X[3,4,2]
   + 24.09694885663908 X[3,4,3] + 19.56080985458253 X[3,4,4]
   + 24.81802709158329 X[3,4,5] + 22.6414068655387 X[3,5,0]
   + 15.02860591680943 X[3,5,1] + 18.57423681287362 X[3,5,2]
   + 24.09694885663908 X[3,5,3] + 19.56080985458253 X[3,5,4]
   + 24.81802709158329 X[3,5,5] + 22.6414068655387 X[3,6,0]
   + 15.02860591680943 X[3,6,1] + 18.57423681287362 X[3,6,2]
   + 24.09694885663908 X[3,6,3] + 19.56080985458253 X[3,6,4]
   + 24.81802709158329 X[3,6,5] + 22.6414068655387 X[3,7,0]
   + 15.02860591680943 X[3,7,1] + 18.57423681287362 X[3,7,2]
   + 24.09694885663908 X[3,7,3] + 19.56080985458253 X[3,7,4]
   + 24.81802709158329 X[3,7,5] <= 1585.661736985939
 demand_rate_constraint_0_0_for_total_delivery_quantity: - X[0,0,0]
   - X[1,0,0] - X[2,0,0] - X[3,0,0] + 23 replenishment_time <= 0
 demand_rate_constraint_0_1_for_total_delivery_quantity: - X[0,0,1]
   - X[1,0,1] - X[2,0,1] - X[3,0,1] + 26 replenishment_time <= 0
 demand_rate_constraint_0_2_for_total_delivery_quantity: - X[0,0,2]
   - X[1,0,2] - X[2,0,2] - X[3,0,2] + 24 replenishment_time <= 0
 demand_rate_constraint_0_3_for_total_delivery_quantity: - X[0,0,3]
   - X[1,0,3] - X[2,0,3] - X[3,0,3] + 9 replenishment_time <= 0
 demand_rate_constraint_0_4_for_total_delivery_quantity: - X[0,0,4]
   - X[1,0,4] - X[2,0,4] - X[3,0,4] + 22 replenishment_time <= 0
 demand_rate_constraint_0_5_for_total_delivery_quantity: - X[0,0,5]
   - X[1,0,5] - X[2,0,5] - X[3,0,5] + 4 replenishment_time <= 0
 demand_rate_constraint_1_0_for_total_delivery_quantity: - X[0,1,0]
   - X[1,1,0] - X[2,1,0] - X[3,1,0] + 22 replenishment_time <= 0
 demand_rate_constraint_1_1_for_total_delivery_quantity: - X[0,1,1]
   - X[1,1,1] - X[2,1,1] - X[3,1,1] + 9 replenishment_time <= 0
 demand_rate_constraint_1_2_for_total_delivery_quantity: - X[0,1,2]
   - X[1,1,2] - X[2,1,2] - X[3,1,2] + 5 replenishment_time <= 0
 demand_rate_constraint_1_3_for_total_delivery_quantity: - X[0,1,3]
   - X[1,1,3] - X[2,1,3] - X[3,1,3] + 26 replenishment_time <= 0
 demand_rate_constraint_1_4_for_total_delivery_quantity: - X[0,1,4]
   - X[1,1,4] - X[2,1,4] - X[3,1,4] + 23 replenishment_time <= 0
 demand_rate_constraint_1_5_for_total_delivery_quantity: - X[0,1,5]
   - X[1,1,5] - X[2,1,5] - X[3,1,5] + 15 replenishment_time <= 0
 demand_rate_constraint_2_0_for_total_delivery_quantity: - X[0,2,0]
   - X[1,2,0] - X[2,2,0] - X[3,2,0] + 10 replenishment_time <= 0
 demand_rate_constraint_2_1_for_total_delivery_quantity: - X[0,2,1]
   - X[1,2,1] - X[2,2,1] - X[3,2,1] + 6 replenishment_time <= 0
 demand_rate_constraint_2_2_for_total_delivery_quantity: - X[0,2,2]
   - X[1,2,2] - X[2,2,2] - X[3,2,2] + 5 replenishment_time <= 0
 demand_rate_constraint_2_3_for_total_delivery_quantity: - X[0,2,3]
   - X[1,2,3] - X[2,2,3] - X[3,2,3] + 7 replenishment_time <= 0
 demand_rate_constraint_2_4_for_total_delivery_quantity: - X[0,2,4]
   - X[1,2,4] - X[2,2,4] - X[3,2,4] + 5 replenishment_time <= 0
 demand_rate_constraint_2_5_for_total_delivery_quantity: - X[0,2,5]
   - X[1,2,5] - X[2,2,5] - X[3,2,5] + 7 replenishment_time <= 0
 demand_rate_constraint_3_0_for_total_delivery_quantity: - X[0,3,0]
   - X[1,3,0] - X[2,3,0] - X[3,3,0] + 22 replenishment_time <= 0
 demand_rate_constraint_3_1_for_total_delivery_quantity: - X[0,3,1]
   - X[1,3,1] - X[2,3,1] - X[3,3,1] + 12 replenishment_time <= 0
 demand_rate_constraint_3_2_for_total_delivery_quantity: - X[0,3,2]
   - X[1,3,2] - X[2,3,2] - X[3,3,2] + 28 replenishment_time <= 0
 demand_rate_constraint_3_3_for_total_delivery_quantity: - X[0,3,3]
   - X[1,3,3] - X[2,3,3] - X[3,3,3] + 24 replenishment_time <= 0
 demand_rate_constraint_3_4_for_total_delivery_quantity: - X[0,3,4]
   - X[1,3,4] - X[2,3,4] - X[3,3,4] + 23 replenishment_time <= 0
 demand_rate_constraint_3_5_for_total_delivery_quantity: - X[0,3,5]
   - X[1,3,5] - X[2,3,5] - X[3,3,5] + 16 replenishment_time <= 0
 demand_rate_constraint_4_0_for_total_delivery_quantity: - X[0,4,0]
   - X[1,4,0] - X[2,4,0] - X[3,4,0] + 2 replenishment_time <= 0
 demand_rate_constraint_4_1_for_total_delivery_quantity: - X[0,4,1]
   - X[1,4,1] - X[2,4,1] - X[3,4,1] + 20 replenishment_time <= 0
 demand_rate_constraint_4_2_for_total_delivery_quantity: - X[0,4,2]
   - X[1,4,2] - X[2,4,2] - X[3,4,2] + 24 replenishment_time <= 0
 demand_rate_constraint_4_3_for_total_delivery_quantity: - X[0,4,3]
   - X[1,4,3] - X[2,4,3] - X[3,4,3] + 8 replenishment_time <= 0
 demand_rate_constraint_4_4_for_total_delivery_quantity: - X[0,4,4]
   - X[1,4,4] - X[2,4,4] - X[3,4,4] + 17 replenishment_time <= 0
 demand_rate_constraint_4_5_for_total_delivery_quantity: - X[0,4,5]
   - X[1,4,5] - X[2,4,5] - X[3,4,5] + 7 replenishment_time <= 0
 demand_rate_constraint_5_0_for_total_delivery_quantity: - X[0,5,0]
   - X[1,5,0] - X[2,5,0] - X[3,5,0] + 9 replenishment_time <= 0
 demand_rate_constraint_5_1_for_total_delivery_quantity: - X[0,5,1]
   - X[1,5,1] - X[2,5,1] - X[3,5,1] + 14 replenishment_time <= 0
 demand_rate_constraint_5_2_for_total_delivery_quantity: - X[0,5,2]
   - X[1,5,2] - X[2,5,2] - X[3,5,2] + 21 replenishment_time <= 0
 demand_rate_constraint_5_3_for_total_delivery_quantity: - X[0,5,3]
   - X[1,5,3] - X[2,5,3] - X[3,5,3] + 17 replenishment_time <= 0
 demand_rate_constraint_5_4_for_total_delivery_quantity: - X[0,5,4]
   - X[1,5,4] - X[2,5,4] - X[3,5,4] + 25 replenishment_time <= 0
 demand_rate_constraint_5_5_for_total_delivery_quantity: - X[0,5,5]
   - X[1,5,5] - X[2,5,5] - X[3,5,5] + 8 replenishment_time <= 0
 demand_rate_constraint_6_0_for_total_delivery_quantity: - X[0,6,0]
   - X[1,6,0] - X[2,6,0] - X[3,6,0] + 27 replenishment_time <= 0
 demand_rate_constraint_6_1_for_total_delivery_quantity: - X[0,6,1]
   - X[1,6,1] - X[2,6,1] - X[3,6,1] + 11 replenishment_time <= 0
 demand_rate_constraint_6_2_for_total_delivery_quantity: - X[0,6,2]
   - X[1,6,2] - X[2,6,2] - X[3,6,2] + 10 replenishment_time <= 0
 demand_rate_constraint_6_3_for_total_delivery_quantity: - X[0,6,3]
   - X[1,6,3] - X[2,6,3] - X[3,6,3] + 23 replenishment_time <= 0
 demand_rate_constraint_6_4_for_total_delivery_quantity: - X[0,6,4]
   - X[1,6,4] - X[2,6,4] - X[3,6,4] + 25 replenishment_time <= 0
 demand_rate_constraint_6_5_for_total_delivery_quantity: - X[0,6,5]
   - X[1,6,5] - X[2,6,5] - X[3,6,5] + 28 replenishment_time <= 0
 demand_rate_constraint_7_0_for_total_delivery_quantity: - X[0,7,0]
   - X[1,7,0] - X[2,7,0] - X[3,7,0] + 6 replenishment_time <= 0
 demand_rate_constraint_7_1_for_total_delivery_quantity: - X[0,7,1]
   - X[1,7,1] - X[2,7,1] - X[3,7,1] + 8 replenishment_time <= 0
 demand_rate_constraint_7_2_for_total_delivery_quantity: - X[0,7,2]
   - X[1,7,2] - X[2,7,2] - X[3,7,2] + 12 replenishment_time <= 0
 demand_rate_constraint_7_3_for_total_delivery_quantity: - X[0,7,3]
   - X[1,7,3] - X[2,7,3] - X[3,7,3] + 11 replenishment_time <= 0
 demand_rate_constraint_7_4_for_total_delivery_quantity: - X[0,7,4]
   - X[1,7,4] - X[2,7,4] - X[3,7,4] + 8 replenishment_time <= 0
 demand_rate_constraint_7_5_for_total_delivery_quantity: - X[0,7,5]
   - X[1,7,5] - X[2,7,5] - X[3,7,5] + 9 replenishment_time <= 0
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,0,3] X[0,0,4] X[0,0,5] X[0,1,0] X[0,1,1]
 X[0,1,2] X[0,1,3] X[0,1,4] X[0,1,5] X[0,2,0] X[0,2,1] X[0,2,2] X[0,2,3]
 X[0,2,4] X[0,2,5] X[0,3,0] X[0,3,1] X[0,3,2] X[0,3,3] X[0,3,4] X[0,3,5]
 X[0,4,0] X[0,4,1] X[0,4,2] X[0,4,3] X[0,4,4] X[0,4,5] X[0,5,0] X[0,5,1]
 X[0,5,2] X[0,5,3] X[0,5,4] X[0,5,5] X[0,6,0] X[0,6,1] X[0,6,2] X[0,6,3]
 X[0,6,4] X[0,6,5] X[0,7,0] X[0,7,1] X[0,7,2] X[0,7,3] X[0,7,4] X[0,7,5]
 X[1,0,0] X[1,0,1] X[1,0,2] X[1,0,3] X[1,0,4] X[1,0,5] X[1,1,0] X[1,1,1]
 X[1,1,2] X[1,1,3] X[1,1,4] X[1,1,5] X[1,2,0] X[1,2,1] X[1,2,2] X[1,2,3]
 X[1,2,4] X[1,2,5] X[1,3,0] X[1,3,1] X[1,3,2] X[1,3,3] X[1,3,4] X[1,3,5]
 X[1,4,0] X[1,4,1] X[1,4,2] X[1,4,3] X[1,4,4] X[1,4,5] X[1,5,0] X[1,5,1]
 X[1,5,2] X[1,5,3] X[1,5,4] X[1,5,5] X[1,6,0] X[1,6,1] X[1,6,2] X[1,6,3]
 X[1,6,4] X[1,6,5] X[1,7,0] X[1,7,1] X[1,7,2] X[1,7,3] X[1,7,4] X[1,7,5]
 X[2,0,0] X[2,0,1] X[2,0,2] X[2,0,3] X[2,0,4] X[2,0,5] X[2,1,0] X[2,1,1]
 X[2,1,2] X[2,1,3] X[2,1,4] X[2,1,5] X[2,2,0] X[2,2,1] X[2,2,2] X[2,2,3]
 X[2,2,4] X[2,2,5] X[2,3,0] X[2,3,1] X[2,3,2] X[2,3,3] X[2,3,4] X[2,3,5]
 X[2,4,0] X[2,4,1] X[2,4,2] X[2,4,3] X[2,4,4] X[2,4,5] X[2,5,0] X[2,5,1]
 X[2,5,2] X[2,5,3] X[2,5,4] X[2,5,5] X[2,6,0] X[2,6,1] X[2,6,2] X[2,6,3]
 X[2,6,4] X[2,6,5] X[2,7,0] X[2,7,1] X[2,7,2] X[2,7,3] X[2,7,4] X[2,7,5]
 X[3,0,0] X[3,0,1] X[3,0,2] X[3,0,3] X[3,0,4] X[3,0,5] X[3,1,0] X[3,1,1]
 X[3,1,2] X[3,1,3] X[3,1,4] X[3,1,5] X[3,2,0] X[3,2,1] X[3,2,2] X[3,2,3]
 X[3,2,4] X[3,2,5] X[3,3,0] X[3,3,1] X[3,3,2] X[3,3,3] X[3,3,4] X[3,3,5]
 X[3,4,0] X[3,4,1] X[3,4,2] X[3,4,3] X[3,4,4] X[3,4,5] X[3,5,0] X[3,5,1]
 X[3,5,2] X[3,5,3] X[3,5,4] X[3,5,5] X[3,6,0] X[3,6,1] X[3,6,2] X[3,6,3]
 X[3,6,4] X[3,6,5] X[3,7,0] X[3,7,1] X[3,7,2] X[3,7,3] X[3,7,4] X[3,7,5]
End
