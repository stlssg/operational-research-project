\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 14 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 22 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 23 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 7 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 15 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 10 replenishment_time <= 0
 time_constraint_2_0_for_minimum: - X[0,2,0] - X[1,2,0] - X[2,2,0]
   + 18 replenishment_time <= 0
 time_constraint_2_1_for_minimum: - X[0,2,1] - X[1,2,1] - X[2,2,1]
   + 25 replenishment_time <= 0
 time_constraint_2_2_for_minimum: - X[0,2,2] - X[1,2,2] - X[2,2,2]
   + 9 replenishment_time <= 0
 capacity_constraint_0_compartments: 20.44883182996897 X[0,0,0]
   + 19.23654799338905 X[0,0,1] + 21.45894113066656 X[0,0,2]
   + 20.44883182996897 X[0,1,0] + 19.23654799338905 X[0,1,1]
   + 21.45894113066656 X[0,1,2] + 20.44883182996897 X[0,2,0]
   + 19.23654799338905 X[0,2,1] + 21.45894113066656 X[0,2,2]
   <= 709.762700785465
 capacity_constraint_1_compartments: 20.44883182996897 X[1,0,0]
   + 19.23654799338905 X[1,0,1] + 21.45894113066656 X[1,0,2]
   + 20.44883182996897 X[1,1,0] + 19.23654799338905 X[1,1,1]
   + 21.45894113066656 X[1,1,2] + 20.44883182996897 X[1,2,0]
   + 19.23654799338905 X[1,2,1] + 21.45894113066656 X[1,2,2]
   <= 743.0378732744839
 capacity_constraint_2_compartments: 20.44883182996897 X[2,0,0]
   + 19.23654799338905 X[2,0,1] + 21.45894113066656 X[2,0,2]
   + 20.44883182996897 X[2,1,0] + 19.23654799338905 X[2,1,1]
   + 21.45894113066656 X[2,1,2] + 20.44883182996897 X[2,2,0]
   + 19.23654799338905 X[2,2,1] + 21.45894113066656 X[2,2,2]
   <= 720.5526752143288
 demand_rate_constraint_0_0_for_total_delivery_quantity: - X[0,0,0]
   - X[1,0,0] - X[2,0,0] + 14 replenishment_time <= 0
 demand_rate_constraint_0_1_for_total_delivery_quantity: - X[0,0,1]
   - X[1,0,1] - X[2,0,1] + 22 replenishment_time <= 0
 demand_rate_constraint_0_2_for_total_delivery_quantity: - X[0,0,2]
   - X[1,0,2] - X[2,0,2] + 23 replenishment_time <= 0
 demand_rate_constraint_1_0_for_total_delivery_quantity: - X[0,1,0]
   - X[1,1,0] - X[2,1,0] + 7 replenishment_time <= 0
 demand_rate_constraint_1_1_for_total_delivery_quantity: - X[0,1,1]
   - X[1,1,1] - X[2,1,1] + 15 replenishment_time <= 0
 demand_rate_constraint_1_2_for_total_delivery_quantity: - X[0,1,2]
   - X[1,1,2] - X[2,1,2] + 10 replenishment_time <= 0
 demand_rate_constraint_2_0_for_total_delivery_quantity: - X[0,2,0]
   - X[1,2,0] - X[2,2,0] + 18 replenishment_time <= 0
 demand_rate_constraint_2_1_for_total_delivery_quantity: - X[0,2,1]
   - X[1,2,1] - X[2,2,1] + 25 replenishment_time <= 0
 demand_rate_constraint_2_2_for_total_delivery_quantity: - X[0,2,2]
   - X[1,2,2] - X[2,2,2] + 9 replenishment_time <= 0
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[0,2,0] X[0,2,1]
 X[0,2,2] X[1,0,0] X[1,0,1] X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[1,2,0]
 X[1,2,1] X[1,2,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0] X[2,1,1] X[2,1,2]
 X[2,2,0] X[2,2,1] X[2,2,2]
End
