\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 23 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 7 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 8 replenishment_time <= 0
 time_constraint_0_3_for_minimum: - X[0,0,3] - X[1,0,3] - X[2,0,3]
   + 6 replenishment_time <= 0
 time_constraint_0_4_for_minimum: - X[0,0,4] - X[1,0,4] - X[2,0,4]
   + 21 replenishment_time <= 0
 time_constraint_0_5_for_minimum: - X[0,0,5] - X[1,0,5] - X[2,0,5]
   + 20 replenishment_time <= 0
 time_constraint_0_6_for_minimum: - X[0,0,6] - X[1,0,6] - X[2,0,6]
   + 22 replenishment_time <= 0
 time_constraint_0_7_for_minimum: - X[0,0,7] - X[1,0,7] - X[2,0,7]
   + 24 replenishment_time <= 0
 time_constraint_0_8_for_minimum: - X[0,0,8] - X[1,0,8] - X[2,0,8]
   + 20 replenishment_time <= 0
 time_constraint_0_9_for_minimum: - X[0,0,9] - X[1,0,9] - X[2,0,9]
   + 14 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 15 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 2 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 12 replenishment_time <= 0
 time_constraint_1_3_for_minimum: - X[0,1,3] - X[1,1,3] - X[2,1,3]
   + 3 replenishment_time <= 0
 time_constraint_1_4_for_minimum: - X[0,1,4] - X[1,1,4] - X[2,1,4]
   + 18 replenishment_time <= 0
 time_constraint_1_5_for_minimum: - X[0,1,5] - X[1,1,5] - X[2,1,5]
   + 10 replenishment_time <= 0
 time_constraint_1_6_for_minimum: - X[0,1,6] - X[1,1,6] - X[2,1,6]
   + 8 replenishment_time <= 0
 time_constraint_1_7_for_minimum: - X[0,1,7] - X[1,1,7] - X[2,1,7]
   + 5 replenishment_time <= 0
 time_constraint_1_8_for_minimum: - X[0,1,8] - X[1,1,8] - X[2,1,8]
   + 15 replenishment_time <= 0
 time_constraint_1_9_for_minimum: - X[0,1,9] - X[1,1,9] - X[2,1,9]
   + 9 replenishment_time <= 0
 time_constraint_2_0_for_minimum: - X[0,2,0] - X[1,2,0] - X[2,2,0]
   + 18 replenishment_time <= 0
 time_constraint_2_1_for_minimum: - X[0,2,1] - X[1,2,1] - X[2,2,1]
   + 8 replenishment_time <= 0
 time_constraint_2_2_for_minimum: - X[0,2,2] - X[1,2,2] - X[2,2,2]
   + 19 replenishment_time <= 0
 time_constraint_2_3_for_minimum: - X[0,2,3] - X[1,2,3] - X[2,2,3]
   + 19 replenishment_time <= 0
 time_constraint_2_4_for_minimum: - X[0,2,4] - X[1,2,4] - X[2,2,4]
   + 19 replenishment_time <= 0
 time_constraint_2_5_for_minimum: - X[0,2,5] - X[1,2,5] - X[2,2,5]
   + 25 replenishment_time <= 0
 time_constraint_2_6_for_minimum: - X[0,2,6] - X[1,2,6] - X[2,2,6]
   + 20 replenishment_time <= 0
 time_constraint_2_7_for_minimum: - X[0,2,7] - X[1,2,7] - X[2,2,7]
   + 14 replenishment_time <= 0
 time_constraint_2_8_for_minimum: - X[0,2,8] - X[1,2,8] - X[2,2,8]
   + 16 replenishment_time <= 0
 time_constraint_2_9_for_minimum: - X[0,2,9] - X[1,2,9] - X[2,2,9]
   + 21 replenishment_time <= 0
 time_constraint_3_0_for_minimum: - X[0,3,0] - X[1,3,0] - X[2,3,0]
   + 7 replenishment_time <= 0
 time_constraint_3_1_for_minimum: - X[0,3,1] - X[1,3,1] - X[2,3,1]
   + 15 replenishment_time <= 0
 time_constraint_3_2_for_minimum: - X[0,3,2] - X[1,3,2] - X[2,3,2]
   + 15 replenishment_time <= 0
 time_constraint_3_3_for_minimum: - X[0,3,3] - X[1,3,3] - X[2,3,3]
   + 9 replenishment_time <= 0
 time_constraint_3_4_for_minimum: - X[0,3,4] - X[1,3,4] - X[2,3,4]
   + 8 replenishment_time <= 0
 time_constraint_3_5_for_minimum: - X[0,3,5] - X[1,3,5] - X[2,3,5]
   + 10 replenishment_time <= 0
 time_constraint_3_6_for_minimum: - X[0,3,6] - X[1,3,6] - X[2,3,6]
   + 11 replenishment_time <= 0
 time_constraint_3_7_for_minimum: - X[0,3,7] - X[1,3,7] - X[2,3,7]
   + 14 replenishment_time <= 0
 time_constraint_3_8_for_minimum: - X[0,3,8] - X[1,3,8] - X[2,3,8]
   + 12 replenishment_time <= 0
 time_constraint_3_9_for_minimum: - X[0,3,9] - X[1,3,9] - X[2,3,9]
   + 20 replenishment_time <= 0
 time_constraint_4_0_for_minimum: - X[0,4,0] - X[1,4,0] - X[2,4,0]
   + 9 replenishment_time <= 0
 time_constraint_4_1_for_minimum: - X[0,4,1] - X[1,4,1] - X[2,4,1]
   + 10 replenishment_time <= 0
 time_constraint_4_2_for_minimum: - X[0,4,2] - X[1,4,2] - X[2,4,2]
   + 9 replenishment_time <= 0
 time_constraint_4_3_for_minimum: - X[0,4,3] - X[1,4,3] - X[2,4,3]
   + 17 replenishment_time <= 0
 time_constraint_4_4_for_minimum: - X[0,4,4] - X[1,4,4] - X[2,4,4]
   + 11 replenishment_time <= 0
 time_constraint_4_5_for_minimum: - X[0,4,5] - X[1,4,5] - X[2,4,5]
   + 14 replenishment_time <= 0
 time_constraint_4_6_for_minimum: - X[0,4,6] - X[1,4,6] - X[2,4,6]
   + 11 replenishment_time <= 0
 time_constraint_4_7_for_minimum: - X[0,4,7] - X[1,4,7] - X[2,4,7]
   + 9 replenishment_time <= 0
 time_constraint_4_8_for_minimum: - X[0,4,8] - X[1,4,8] - X[2,4,8]
   + 9 replenishment_time <= 0
 time_constraint_4_9_for_minimum: - X[0,4,9] - X[1,4,9] - X[2,4,9]
   + 17 replenishment_time <= 0
 time_constraint_5_0_for_minimum: - X[0,5,0] - X[1,5,0] - X[2,5,0]
   + 10 replenishment_time <= 0
 time_constraint_5_1_for_minimum: - X[0,5,1] - X[1,5,1] - X[2,5,1]
   + 11 replenishment_time <= 0
 time_constraint_5_2_for_minimum: - X[0,5,2] - X[1,5,2] - X[2,5,2]
   + 12 replenishment_time <= 0
 time_constraint_5_3_for_minimum: - X[0,5,3] - X[1,5,3] - X[2,5,3]
   + 16 replenishment_time <= 0
 time_constraint_5_4_for_minimum: - X[0,5,4] - X[1,5,4] - X[2,5,4]
   + 10 replenishment_time <= 0
 time_constraint_5_5_for_minimum: - X[0,5,5] - X[1,5,5] - X[2,5,5]
   + 16 replenishment_time <= 0
 time_constraint_5_6_for_minimum: - X[0,5,6] - X[1,5,6] - X[2,5,6]
   + 10 replenishment_time <= 0
 time_constraint_5_7_for_minimum: - X[0,5,7] - X[1,5,7] - X[2,5,7]
   + 17 replenishment_time <= 0
 time_constraint_5_8_for_minimum: - X[0,5,8] - X[1,5,8] - X[2,5,8]
   + 13 replenishment_time <= 0
 time_constraint_5_9_for_minimum: - X[0,5,9] - X[1,5,9] - X[2,5,9]
   + 17 replenishment_time <= 0
 time_constraint_6_0_for_minimum: - X[0,6,0] - X[1,6,0] - X[2,6,0]
   + 12 replenishment_time <= 0
 time_constraint_6_1_for_minimum: - X[0,6,1] - X[1,6,1] - X[2,6,1]
   + 13 replenishment_time <= 0
 time_constraint_6_2_for_minimum: - X[0,6,2] - X[1,6,2] - X[2,6,2]
   + 8 replenishment_time <= 0
 time_constraint_6_3_for_minimum: - X[0,6,3] - X[1,6,3] - X[2,6,3]
   + 10 replenishment_time <= 0
 time_constraint_6_4_for_minimum: - X[0,6,4] - X[1,6,4] - X[2,6,4]
   + 9 replenishment_time <= 0
 time_constraint_6_5_for_minimum: - X[0,6,5] - X[1,6,5] - X[2,6,5]
   + 10 replenishment_time <= 0
 time_constraint_6_6_for_minimum: - X[0,6,6] - X[1,6,6] - X[2,6,6]
   + 9 replenishment_time <= 0
 time_constraint_6_7_for_minimum: - X[0,6,7] - X[1,6,7] - X[2,6,7]
   + 10 replenishment_time <= 0
 time_constraint_6_8_for_minimum: - X[0,6,8] - X[1,6,8] - X[2,6,8]
   + 11 replenishment_time <= 0
 time_constraint_6_9_for_minimum: - X[0,6,9] - X[1,6,9] - X[2,6,9]
   + 8 replenishment_time <= 0
 time_constraint_7_0_for_minimum: - X[0,7,0] - X[1,7,0] - X[2,7,0]
   + 12 replenishment_time <= 0
 time_constraint_7_1_for_minimum: - X[0,7,1] - X[1,7,1] - X[2,7,1]
   + 10 replenishment_time <= 0
 time_constraint_7_2_for_minimum: - X[0,7,2] - X[1,7,2] - X[2,7,2]
   + 7 replenishment_time <= 0
 time_constraint_7_3_for_minimum: - X[0,7,3] - X[1,7,3] - X[2,7,3]
   + 10 replenishment_time <= 0
 time_constraint_7_4_for_minimum: - X[0,7,4] - X[1,7,4] - X[2,7,4]
   + 5 replenishment_time <= 0
 time_constraint_7_5_for_minimum: - X[0,7,5] - X[1,7,5] - X[2,7,5]
   + 10 replenishment_time <= 0
 time_constraint_7_6_for_minimum: - X[0,7,6] - X[1,7,6] - X[2,7,6]
   + 14 replenishment_time <= 0
 time_constraint_7_7_for_minimum: - X[0,7,7] - X[1,7,7] - X[2,7,7]
   + 8 replenishment_time <= 0
 time_constraint_7_8_for_minimum: - X[0,7,8] - X[1,7,8] - X[2,7,8]
   + 11 replenishment_time <= 0
 time_constraint_7_9_for_minimum: - X[0,7,9] - X[1,7,9] - X[2,7,9]
   + 5 replenishment_time <= 0
 time_constraint_8_0_for_minimum: - X[0,8,0] - X[1,8,0] - X[2,8,0]
   + 22 replenishment_time <= 0
 time_constraint_8_1_for_minimum: - X[0,8,1] - X[1,8,1] - X[2,8,1]
   + 9 replenishment_time <= 0
 time_constraint_8_2_for_minimum: - X[0,8,2] - X[1,8,2] - X[2,8,2]
   + 6 replenishment_time <= 0
 time_constraint_8_3_for_minimum: - X[0,8,3] - X[1,8,3] - X[2,8,3]
   + 18 replenishment_time <= 0
 time_constraint_8_4_for_minimum: - X[0,8,4] - X[1,8,4] - X[2,8,4]
   + 2 replenishment_time <= 0
 time_constraint_8_5_for_minimum: - X[0,8,5] - X[1,8,5] - X[2,8,5]
   + 25 replenishment_time <= 0
 time_constraint_8_6_for_minimum: - X[0,8,6] - X[1,8,6] - X[2,8,6]
   + replenishment_time <= 0
 time_constraint_8_7_for_minimum: - X[0,8,7] - X[1,8,7] - X[2,8,7]
   + 21 replenishment_time <= 0
 time_constraint_8_8_for_minimum: - X[0,8,8] - X[1,8,8] - X[2,8,8]
   + 9 replenishment_time <= 0
 time_constraint_8_9_for_minimum: - X[0,8,9] - X[1,8,9] - X[2,8,9]
   + 22 replenishment_time <= 0
 time_constraint_9_0_for_minimum: - X[0,9,0] - X[1,9,0] - X[2,9,0]
   + 27 replenishment_time <= 0
 time_constraint_9_1_for_minimum: - X[0,9,1] - X[1,9,1] - X[2,9,1]
   + 10 replenishment_time <= 0
 time_constraint_9_2_for_minimum: - X[0,9,2] - X[1,9,2] - X[2,9,2]
   + 18 replenishment_time <= 0
 time_constraint_9_3_for_minimum: - X[0,9,3] - X[1,9,3] - X[2,9,3]
   + 18 replenishment_time <= 0
 time_constraint_9_4_for_minimum: - X[0,9,4] - X[1,9,4] - X[2,9,4]
   + 18 replenishment_time <= 0
 time_constraint_9_5_for_minimum: - X[0,9,5] - X[1,9,5] - X[2,9,5]
   + 9 replenishment_time <= 0
 time_constraint_9_6_for_minimum: - X[0,9,6] - X[1,9,6] - X[2,9,6]
   + 27 replenishment_time <= 0
 time_constraint_9_7_for_minimum: - X[0,9,7] - X[1,9,7] - X[2,9,7]
   + 15 replenishment_time <= 0
 time_constraint_9_8_for_minimum: - X[0,9,8] - X[1,9,8] - X[2,9,8]
   + 24 replenishment_time <= 0
 time_constraint_9_9_for_minimum: - X[0,9,9] - X[1,9,9] - X[2,9,9]
   + 21 replenishment_time <= 0
 capacity_constraint_0_compartments: 20 X[0,0,0] + 19 X[0,0,1]
   + 21 X[0,0,2] + 19 X[0,0,3] + 24 X[0,0,4] + 25 X[0,0,5] + 19 X[0,0,6]
   + 23 X[0,0,7] + 20 X[0,0,8] + 21 X[0,0,9] + 20 X[0,1,0] + 19 X[0,1,1]
   + 21 X[0,1,2] + 19 X[0,1,3] + 24 X[0,1,4] + 25 X[0,1,5] + 19 X[0,1,6]
   + 23 X[0,1,7] + 20 X[0,1,8] + 21 X[0,1,9] + 20 X[0,2,0] + 19 X[0,2,1]
   + 21 X[0,2,2] + 19 X[0,2,3] + 24 X[0,2,4] + 25 X[0,2,5] + 19 X[0,2,6]
   + 23 X[0,2,7] + 20 X[0,2,8] + 21 X[0,2,9] + 20 X[0,3,0] + 19 X[0,3,1]
   + 21 X[0,3,2] + 19 X[0,3,3] + 24 X[0,3,4] + 25 X[0,3,5] + 19 X[0,3,6]
   + 23 X[0,3,7] + 20 X[0,3,8] + 21 X[0,3,9] + 20 X[0,4,0] + 19 X[0,4,1]
   + 21 X[0,4,2] + 19 X[0,4,3] + 24 X[0,4,4] + 25 X[0,4,5] + 19 X[0,4,6]
   + 23 X[0,4,7] + 20 X[0,4,8] + 21 X[0,4,9] + 20 X[0,5,0] + 19 X[0,5,1]
   + 21 X[0,5,2] + 19 X[0,5,3] + 24 X[0,5,4] + 25 X[0,5,5] + 19 X[0,5,6]
   + 23 X[0,5,7] + 20 X[0,5,8] + 21 X[0,5,9] + 20 X[0,6,0] + 19 X[0,6,1]
   + 21 X[0,6,2] + 19 X[0,6,3] + 24 X[0,6,4] + 25 X[0,6,5] + 19 X[0,6,6]
   + 23 X[0,6,7] + 20 X[0,6,8] + 21 X[0,6,9] + 20 X[0,7,0] + 19 X[0,7,1]
   + 21 X[0,7,2] + 19 X[0,7,3] + 24 X[0,7,4] + 25 X[0,7,5] + 19 X[0,7,6]
   + 23 X[0,7,7] + 20 X[0,7,8] + 21 X[0,7,9] + 20 X[0,8,0] + 19 X[0,8,1]
   + 21 X[0,8,2] + 19 X[0,8,3] + 24 X[0,8,4] + 25 X[0,8,5] + 19 X[0,8,6]
   + 23 X[0,8,7] + 20 X[0,8,8] + 21 X[0,8,9] + 20 X[0,9,0] + 19 X[0,9,1]
   + 21 X[0,9,2] + 19 X[0,9,3] + 24 X[0,9,4] + 25 X[0,9,5] + 19 X[0,9,6]
   + 23 X[0,9,7] + 20 X[0,9,8] + 21 X[0,9,9] <= 13646
 capacity_constraint_1_compartments: 20 X[1,0,0] + 19 X[1,0,1]
   + 21 X[1,0,2] + 19 X[1,0,3] + 24 X[1,0,4] + 25 X[1,0,5] + 19 X[1,0,6]
   + 23 X[1,0,7] + 20 X[1,0,8] + 21 X[1,0,9] + 20 X[1,1,0] + 19 X[1,1,1]
   + 21 X[1,1,2] + 19 X[1,1,3] + 24 X[1,1,4] + 25 X[1,1,5] + 19 X[1,1,6]
   + 23 X[1,1,7] + 20 X[1,1,8] + 21 X[1,1,9] + 20 X[1,2,0] + 19 X[1,2,1]
   + 21 X[1,2,2] + 19 X[1,2,3] + 24 X[1,2,4] + 25 X[1,2,5] + 19 X[1,2,6]
   + 23 X[1,2,7] + 20 X[1,2,8] + 21 X[1,2,9] + 20 X[1,3,0] + 19 X[1,3,1]
   + 21 X[1,3,2] + 19 X[1,3,3] + 24 X[1,3,4] + 25 X[1,3,5] + 19 X[1,3,6]
   + 23 X[1,3,7] + 20 X[1,3,8] + 21 X[1,3,9] + 20 X[1,4,0] + 19 X[1,4,1]
   + 21 X[1,4,2] + 19 X[1,4,3] + 24 X[1,4,4] + 25 X[1,4,5] + 19 X[1,4,6]
   + 23 X[1,4,7] + 20 X[1,4,8] + 21 X[1,4,9] + 20 X[1,5,0] + 19 X[1,5,1]
   + 21 X[1,5,2] + 19 X[1,5,3] + 24 X[1,5,4] + 25 X[1,5,5] + 19 X[1,5,6]
   + 23 X[1,5,7] + 20 X[1,5,8] + 21 X[1,5,9] + 20 X[1,6,0] + 19 X[1,6,1]
   + 21 X[1,6,2] + 19 X[1,6,3] + 24 X[1,6,4] + 25 X[1,6,5] + 19 X[1,6,6]
   + 23 X[1,6,7] + 20 X[1,6,8] + 21 X[1,6,9] + 20 X[1,7,0] + 19 X[1,7,1]
   + 21 X[1,7,2] + 19 X[1,7,3] + 24 X[1,7,4] + 25 X[1,7,5] + 19 X[1,7,6]
   + 23 X[1,7,7] + 20 X[1,7,8] + 21 X[1,7,9] + 20 X[1,8,0] + 19 X[1,8,1]
   + 21 X[1,8,2] + 19 X[1,8,3] + 24 X[1,8,4] + 25 X[1,8,5] + 19 X[1,8,6]
   + 23 X[1,8,7] + 20 X[1,8,8] + 21 X[1,8,9] + 20 X[1,9,0] + 19 X[1,9,1]
   + 21 X[1,9,2] + 19 X[1,9,3] + 24 X[1,9,4] + 25 X[1,9,5] + 19 X[1,9,6]
   + 23 X[1,9,7] + 20 X[1,9,8] + 21 X[1,9,9] <= 14146
 capacity_constraint_2_compartments: 20 X[2,0,0] + 19 X[2,0,1]
   + 21 X[2,0,2] + 19 X[2,0,3] + 24 X[2,0,4] + 25 X[2,0,5] + 19 X[2,0,6]
   + 23 X[2,0,7] + 20 X[2,0,8] + 21 X[2,0,9] + 20 X[2,1,0] + 19 X[2,1,1]
   + 21 X[2,1,2] + 19 X[2,1,3] + 24 X[2,1,4] + 25 X[2,1,5] + 19 X[2,1,6]
   + 23 X[2,1,7] + 20 X[2,1,8] + 21 X[2,1,9] + 20 X[2,2,0] + 19 X[2,2,1]
   + 21 X[2,2,2] + 19 X[2,2,3] + 24 X[2,2,4] + 25 X[2,2,5] + 19 X[2,2,6]
   + 23 X[2,2,7] + 20 X[2,2,8] + 21 X[2,2,9] + 20 X[2,3,0] + 19 X[2,3,1]
   + 21 X[2,3,2] + 19 X[2,3,3] + 24 X[2,3,4] + 25 X[2,3,5] + 19 X[2,3,6]
   + 23 X[2,3,7] + 20 X[2,3,8] + 21 X[2,3,9] + 20 X[2,4,0] + 19 X[2,4,1]
   + 21 X[2,4,2] + 19 X[2,4,3] + 24 X[2,4,4] + 25 X[2,4,5] + 19 X[2,4,6]
   + 23 X[2,4,7] + 20 X[2,4,8] + 21 X[2,4,9] + 20 X[2,5,0] + 19 X[2,5,1]
   + 21 X[2,5,2] + 19 X[2,5,3] + 24 X[2,5,4] + 25 X[2,5,5] + 19 X[2,5,6]
   + 23 X[2,5,7] + 20 X[2,5,8] + 21 X[2,5,9] + 20 X[2,6,0] + 19 X[2,6,1]
   + 21 X[2,6,2] + 19 X[2,6,3] + 24 X[2,6,4] + 25 X[2,6,5] + 19 X[2,6,6]
   + 23 X[2,6,7] + 20 X[2,6,8] + 21 X[2,6,9] + 20 X[2,7,0] + 19 X[2,7,1]
   + 21 X[2,7,2] + 19 X[2,7,3] + 24 X[2,7,4] + 25 X[2,7,5] + 19 X[2,7,6]
   + 23 X[2,7,7] + 20 X[2,7,8] + 21 X[2,7,9] + 20 X[2,8,0] + 19 X[2,8,1]
   + 21 X[2,8,2] + 19 X[2,8,3] + 24 X[2,8,4] + 25 X[2,8,5] + 19 X[2,8,6]
   + 23 X[2,8,7] + 20 X[2,8,8] + 21 X[2,8,9] + 20 X[2,9,0] + 19 X[2,9,1]
   + 21 X[2,9,2] + 19 X[2,9,3] + 24 X[2,9,4] + 25 X[2,9,5] + 19 X[2,9,6]
   + 23 X[2,9,7] + 20 X[2,9,8] + 21 X[2,9,9] <= 13808
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,0,3] X[0,0,4] X[0,0,5] X[0,0,6] X[0,0,7]
 X[0,0,8] X[0,0,9] X[0,1,0] X[0,1,1] X[0,1,2] X[0,1,3] X[0,1,4] X[0,1,5]
 X[0,1,6] X[0,1,7] X[0,1,8] X[0,1,9] X[0,2,0] X[0,2,1] X[0,2,2] X[0,2,3]
 X[0,2,4] X[0,2,5] X[0,2,6] X[0,2,7] X[0,2,8] X[0,2,9] X[0,3,0] X[0,3,1]
 X[0,3,2] X[0,3,3] X[0,3,4] X[0,3,5] X[0,3,6] X[0,3,7] X[0,3,8] X[0,3,9]
 X[0,4,0] X[0,4,1] X[0,4,2] X[0,4,3] X[0,4,4] X[0,4,5] X[0,4,6] X[0,4,7]
 X[0,4,8] X[0,4,9] X[0,5,0] X[0,5,1] X[0,5,2] X[0,5,3] X[0,5,4] X[0,5,5]
 X[0,5,6] X[0,5,7] X[0,5,8] X[0,5,9] X[0,6,0] X[0,6,1] X[0,6,2] X[0,6,3]
 X[0,6,4] X[0,6,5] X[0,6,6] X[0,6,7] X[0,6,8] X[0,6,9] X[0,7,0] X[0,7,1]
 X[0,7,2] X[0,7,3] X[0,7,4] X[0,7,5] X[0,7,6] X[0,7,7] X[0,7,8] X[0,7,9]
 X[0,8,0] X[0,8,1] X[0,8,2] X[0,8,3] X[0,8,4] X[0,8,5] X[0,8,6] X[0,8,7]
 X[0,8,8] X[0,8,9] X[0,9,0] X[0,9,1] X[0,9,2] X[0,9,3] X[0,9,4] X[0,9,5]
 X[0,9,6] X[0,9,7] X[0,9,8] X[0,9,9] X[1,0,0] X[1,0,1] X[1,0,2] X[1,0,3]
 X[1,0,4] X[1,0,5] X[1,0,6] X[1,0,7] X[1,0,8] X[1,0,9] X[1,1,0] X[1,1,1]
 X[1,1,2] X[1,1,3] X[1,1,4] X[1,1,5] X[1,1,6] X[1,1,7] X[1,1,8] X[1,1,9]
 X[1,2,0] X[1,2,1] X[1,2,2] X[1,2,3] X[1,2,4] X[1,2,5] X[1,2,6] X[1,2,7]
 X[1,2,8] X[1,2,9] X[1,3,0] X[1,3,1] X[1,3,2] X[1,3,3] X[1,3,4] X[1,3,5]
 X[1,3,6] X[1,3,7] X[1,3,8] X[1,3,9] X[1,4,0] X[1,4,1] X[1,4,2] X[1,4,3]
 X[1,4,4] X[1,4,5] X[1,4,6] X[1,4,7] X[1,4,8] X[1,4,9] X[1,5,0] X[1,5,1]
 X[1,5,2] X[1,5,3] X[1,5,4] X[1,5,5] X[1,5,6] X[1,5,7] X[1,5,8] X[1,5,9]
 X[1,6,0] X[1,6,1] X[1,6,2] X[1,6,3] X[1,6,4] X[1,6,5] X[1,6,6] X[1,6,7]
 X[1,6,8] X[1,6,9] X[1,7,0] X[1,7,1] X[1,7,2] X[1,7,3] X[1,7,4] X[1,7,5]
 X[1,7,6] X[1,7,7] X[1,7,8] X[1,7,9] X[1,8,0] X[1,8,1] X[1,8,2] X[1,8,3]
 X[1,8,4] X[1,8,5] X[1,8,6] X[1,8,7] X[1,8,8] X[1,8,9] X[1,9,0] X[1,9,1]
 X[1,9,2] X[1,9,3] X[1,9,4] X[1,9,5] X[1,9,6] X[1,9,7] X[1,9,8] X[1,9,9]
 X[2,0,0] X[2,0,1] X[2,0,2] X[2,0,3] X[2,0,4] X[2,0,5] X[2,0,6] X[2,0,7]
 X[2,0,8] X[2,0,9] X[2,1,0] X[2,1,1] X[2,1,2] X[2,1,3] X[2,1,4] X[2,1,5]
 X[2,1,6] X[2,1,7] X[2,1,8] X[2,1,9] X[2,2,0] X[2,2,1] X[2,2,2] X[2,2,3]
 X[2,2,4] X[2,2,5] X[2,2,6] X[2,2,7] X[2,2,8] X[2,2,9] X[2,3,0] X[2,3,1]
 X[2,3,2] X[2,3,3] X[2,3,4] X[2,3,5] X[2,3,6] X[2,3,7] X[2,3,8] X[2,3,9]
 X[2,4,0] X[2,4,1] X[2,4,2] X[2,4,3] X[2,4,4] X[2,4,5] X[2,4,6] X[2,4,7]
 X[2,4,8] X[2,4,9] X[2,5,0] X[2,5,1] X[2,5,2] X[2,5,3] X[2,5,4] X[2,5,5]
 X[2,5,6] X[2,5,7] X[2,5,8] X[2,5,9] X[2,6,0] X[2,6,1] X[2,6,2] X[2,6,3]
 X[2,6,4] X[2,6,5] X[2,6,6] X[2,6,7] X[2,6,8] X[2,6,9] X[2,7,0] X[2,7,1]
 X[2,7,2] X[2,7,3] X[2,7,4] X[2,7,5] X[2,7,6] X[2,7,7] X[2,7,8] X[2,7,9]
 X[2,8,0] X[2,8,1] X[2,8,2] X[2,8,3] X[2,8,4] X[2,8,5] X[2,8,6] X[2,8,7]
 X[2,8,8] X[2,8,9] X[2,9,0] X[2,9,1] X[2,9,2] X[2,9,3] X[2,9,4] X[2,9,5]
 X[2,9,6] X[2,9,7] X[2,9,8] X[2,9,9]
End
