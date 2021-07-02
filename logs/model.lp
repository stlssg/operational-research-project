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
 capacity_constraint_0_compartments: 20.44883182996897 X[0,0,0]
   + 19.23654799338905 X[0,0,1] + 21.45894113066656 X[0,0,2]
   + 20.44883182996897 X[0,1,0] + 19.23654799338905 X[0,1,1]
   + 21.45894113066656 X[0,1,2] <= 809.762700785465
 capacity_constraint_1_compartments: 20.44883182996897 X[1,0,0]
   + 19.23654799338905 X[1,0,1] + 21.45894113066656 X[1,0,2]
   + 20.44883182996897 X[1,1,0] + 19.23654799338905 X[1,1,1]
   + 21.45894113066656 X[1,1,2] <= 843.0378732744839
 capacity_constraint_2_compartments: 20.44883182996897 X[2,0,0]
   + 19.23654799338905 X[2,0,1] + 21.45894113066656 X[2,0,2]
   + 20.44883182996897 X[2,1,0] + 19.23654799338905 X[2,1,1]
   + 21.45894113066656 X[2,1,2] <= 820.5526752143288
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[1,0,0] X[1,0,1]
 X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0]
 X[2,1,1] X[2,1,2]
End
