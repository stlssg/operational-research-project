\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 8 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 15 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 9 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 24 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 21 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 24 replenishment_time <= 0
 capacity_constraint_0_compartments: 19.28308684929695 X[0,0,0]
   + 22.6414068655387 X[0,0,1] + 15.02860591680943 X[0,0,2]
   + 19.28308684929695 X[0,1,0] + 22.6414068655387 X[0,1,1]
   + 15.02860591680943 X[0,1,2] <= 889.526451370334
 capacity_constraint_1_compartments: 19.28308684929695 X[1,0,0]
   + 22.6414068655387 X[1,0,1] + 15.02860591680943 X[1,0,2]
   + 19.28308684929695 X[1,1,0] + 22.6414068655387 X[1,1,1]
   + 15.02860591680943 X[1,1,2] <= 745.3094842263446
 capacity_constraint_2_compartments: 19.28308684929695 X[2,0,0]
   + 22.6414068655387 X[2,0,1] + 15.02860591680943 X[2,0,2]
   + 19.28308684929695 X[2,1,0] + 22.6414068655387 X[2,1,1]
   + 15.02860591680943 X[2,1,2] <= 818.8840288782266
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,1,0] X[0,1,1] X[0,1,2] X[1,0,0] X[1,0,1]
 X[1,0,2] X[1,1,0] X[1,1,1] X[1,1,2] X[2,0,0] X[2,0,1] X[2,0,2] X[2,1,0]
 X[2,1,1] X[2,1,2]
End
