\ Model SimpleTruckLoadingProblem
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  replenishment_time
Subject To
 time_constraint_0_0_for_minimum: - X[0,0,0] - X[1,0,0] - X[2,0,0]
   + 9 replenishment_time <= 0
 time_constraint_0_1_for_minimum: - X[0,0,1] - X[1,0,1] - X[2,0,1]
   + 9 replenishment_time <= 0
 time_constraint_0_2_for_minimum: - X[0,0,2] - X[1,0,2] - X[2,0,2]
   + 10 replenishment_time <= 0
 time_constraint_0_3_for_minimum: - X[0,0,3] - X[1,0,3] - X[2,0,3]
   + 9 replenishment_time <= 0
 time_constraint_0_4_for_minimum: - X[0,0,4] - X[1,0,4] - X[2,0,4]
   + 9 replenishment_time <= 0
 time_constraint_0_5_for_minimum: - X[0,0,5] - X[1,0,5] - X[2,0,5]
   + 11 replenishment_time <= 0
 time_constraint_0_6_for_minimum: - X[0,0,6] - X[1,0,6] - X[2,0,6]
   + 10 replenishment_time <= 0
 time_constraint_0_7_for_minimum: - X[0,0,7] - X[1,0,7] - X[2,0,7]
   + 8 replenishment_time <= 0
 time_constraint_0_8_for_minimum: - X[0,0,8] - X[1,0,8] - X[2,0,8]
   + 11 replenishment_time <= 0
 time_constraint_0_9_for_minimum: - X[0,0,9] - X[1,0,9] - X[2,0,9]
   + 9 replenishment_time <= 0
 time_constraint_0_10_for_minimum: - X[0,0,10] - X[1,0,10] - X[2,0,10]
   + 10 replenishment_time <= 0
 time_constraint_0_11_for_minimum: - X[0,0,11] - X[1,0,11] - X[2,0,11]
   + 9 replenishment_time <= 0
 time_constraint_0_12_for_minimum: - X[0,0,12] - X[1,0,12] - X[2,0,12]
   + 10 replenishment_time <= 0
 time_constraint_0_13_for_minimum: - X[0,0,13] - X[1,0,13] - X[2,0,13]
   + 10 replenishment_time <= 0
 time_constraint_0_14_for_minimum: - X[0,0,14] - X[1,0,14] - X[2,0,14]
   + 10 replenishment_time <= 0
 time_constraint_1_0_for_minimum: - X[0,1,0] - X[1,1,0] - X[2,1,0]
   + 7 replenishment_time <= 0
 time_constraint_1_1_for_minimum: - X[0,1,1] - X[1,1,1] - X[2,1,1]
   + 7 replenishment_time <= 0
 time_constraint_1_2_for_minimum: - X[0,1,2] - X[1,1,2] - X[2,1,2]
   + 14 replenishment_time <= 0
 time_constraint_1_3_for_minimum: - X[0,1,3] - X[1,1,3] - X[2,1,3]
   + 22 replenishment_time <= 0
 time_constraint_1_4_for_minimum: - X[0,1,4] - X[1,1,4] - X[2,1,4]
   + 17 replenishment_time <= 0
 time_constraint_1_5_for_minimum: - X[0,1,5] - X[1,1,5] - X[2,1,5]
   + 7 replenishment_time <= 0
 time_constraint_1_6_for_minimum: - X[0,1,6] - X[1,1,6] - X[2,1,6]
   + 4 replenishment_time <= 0
 time_constraint_1_7_for_minimum: - X[0,1,7] - X[1,1,7] - X[2,1,7]
   + 11 replenishment_time <= 0
 time_constraint_1_8_for_minimum: - X[0,1,8] - X[1,1,8] - X[2,1,8]
   + 22 replenishment_time <= 0
 time_constraint_1_9_for_minimum: - X[0,1,9] - X[1,1,9] - X[2,1,9]
   + 16 replenishment_time <= 0
 time_constraint_1_10_for_minimum: - X[0,1,10] - X[1,1,10] - X[2,1,10]
   + 5 replenishment_time <= 0
 time_constraint_1_11_for_minimum: - X[0,1,11] - X[1,1,11] - X[2,1,11]
   + 2 replenishment_time <= 0
 time_constraint_1_12_for_minimum: - X[0,1,12] - X[1,1,12] - X[2,1,12]
   + 22 replenishment_time <= 0
 time_constraint_1_13_for_minimum: - X[0,1,13] - X[1,1,13] - X[2,1,13]
   + 20 replenishment_time <= 0
 time_constraint_1_14_for_minimum: - X[0,1,14] - X[1,1,14] - X[2,1,14]
   + 19 replenishment_time <= 0
 time_constraint_2_0_for_minimum: - X[0,2,0] - X[1,2,0] - X[2,2,0]
   + 11 replenishment_time <= 0
 time_constraint_2_1_for_minimum: - X[0,2,1] - X[1,2,1] - X[2,2,1]
   + 11 replenishment_time <= 0
 time_constraint_2_2_for_minimum: - X[0,2,2] - X[1,2,2] - X[2,2,2]
   + 11 replenishment_time <= 0
 time_constraint_2_3_for_minimum: - X[0,2,3] - X[1,2,3] - X[2,2,3]
   + 10 replenishment_time <= 0
 time_constraint_2_4_for_minimum: - X[0,2,4] - X[1,2,4] - X[2,2,4]
   + 10 replenishment_time <= 0
 time_constraint_2_5_for_minimum: - X[0,2,5] - X[1,2,5] - X[2,2,5]
   + 10 replenishment_time <= 0
 time_constraint_2_6_for_minimum: - X[0,2,6] - X[1,2,6] - X[2,2,6]
   + 11 replenishment_time <= 0
 time_constraint_2_7_for_minimum: - X[0,2,7] - X[1,2,7] - X[2,2,7]
   + 10 replenishment_time <= 0
 time_constraint_2_8_for_minimum: - X[0,2,8] - X[1,2,8] - X[2,2,8]
   + 11 replenishment_time <= 0
 time_constraint_2_9_for_minimum: - X[0,2,9] - X[1,2,9] - X[2,2,9]
   + 10 replenishment_time <= 0
 time_constraint_2_10_for_minimum: - X[0,2,10] - X[1,2,10] - X[2,2,10]
   + 11 replenishment_time <= 0
 time_constraint_2_11_for_minimum: - X[0,2,11] - X[1,2,11] - X[2,2,11]
   + 10 replenishment_time <= 0
 time_constraint_2_12_for_minimum: - X[0,2,12] - X[1,2,12] - X[2,2,12]
   + 11 replenishment_time <= 0
 time_constraint_2_13_for_minimum: - X[0,2,13] - X[1,2,13] - X[2,2,13]
   + 11 replenishment_time <= 0
 time_constraint_2_14_for_minimum: - X[0,2,14] - X[1,2,14] - X[2,2,14]
   + 10 replenishment_time <= 0
 time_constraint_3_0_for_minimum: - X[0,3,0] - X[1,3,0] - X[2,3,0]
   + 16 replenishment_time <= 0
 time_constraint_3_1_for_minimum: - X[0,3,1] - X[1,3,1] - X[2,3,1]
   + 24 replenishment_time <= 0
 time_constraint_3_2_for_minimum: - X[0,3,2] - X[1,3,2] - X[2,3,2]
   + 10 replenishment_time <= 0
 time_constraint_3_3_for_minimum: - X[0,3,3] - X[1,3,3] - X[2,3,3]
   + 16 replenishment_time <= 0
 time_constraint_3_4_for_minimum: - X[0,3,4] - X[1,3,4] - X[2,3,4]
   + 11 replenishment_time <= 0
 time_constraint_3_5_for_minimum: - X[0,3,5] - X[1,3,5] - X[2,3,5]
   + 10 replenishment_time <= 0
 time_constraint_3_6_for_minimum: - X[0,3,6] - X[1,3,6] - X[2,3,6]
   + 22 replenishment_time <= 0
 time_constraint_3_7_for_minimum: - X[0,3,7] - X[1,3,7] - X[2,3,7]
   + 14 replenishment_time <= 0
 time_constraint_3_8_for_minimum: - X[0,3,8] - X[1,3,8] - X[2,3,8]
   + 19 replenishment_time <= 0
 time_constraint_3_9_for_minimum: - X[0,3,9] - X[1,3,9] - X[2,3,9]
   + 24 replenishment_time <= 0
 time_constraint_3_10_for_minimum: - X[0,3,10] - X[1,3,10] - X[2,3,10]
   + 24 replenishment_time <= 0
 time_constraint_3_11_for_minimum: - X[0,3,11] - X[1,3,11] - X[2,3,11]
   + 19 replenishment_time <= 0
 time_constraint_3_12_for_minimum: - X[0,3,12] - X[1,3,12] - X[2,3,12]
   + 20 replenishment_time <= 0
 time_constraint_3_13_for_minimum: - X[0,3,13] - X[1,3,13] - X[2,3,13]
   + 10 replenishment_time <= 0
 time_constraint_3_14_for_minimum: - X[0,3,14] - X[1,3,14] - X[2,3,14]
   + 14 replenishment_time <= 0
 time_constraint_4_0_for_minimum: - X[0,4,0] - X[1,4,0] - X[2,4,0]
   + 14 replenishment_time <= 0
 time_constraint_4_1_for_minimum: - X[0,4,1] - X[1,4,1] - X[2,4,1]
   + 7 replenishment_time <= 0
 time_constraint_4_2_for_minimum: - X[0,4,2] - X[1,4,2] - X[2,4,2]
   + 15 replenishment_time <= 0
 time_constraint_4_3_for_minimum: - X[0,4,3] - X[1,4,3] - X[2,4,3]
   + 12 replenishment_time <= 0
 time_constraint_4_4_for_minimum: - X[0,4,4] - X[1,4,4] - X[2,4,4]
   + 15 replenishment_time <= 0
 time_constraint_4_5_for_minimum: - X[0,4,5] - X[1,4,5] - X[2,4,5]
   + 7 replenishment_time <= 0
 time_constraint_4_6_for_minimum: - X[0,4,6] - X[1,4,6] - X[2,4,6]
   + 6 replenishment_time <= 0
 time_constraint_4_7_for_minimum: - X[0,4,7] - X[1,4,7] - X[2,4,7]
   + 11 replenishment_time <= 0
 time_constraint_4_8_for_minimum: - X[0,4,8] - X[1,4,8] - X[2,4,8]
   + 12 replenishment_time <= 0
 time_constraint_4_9_for_minimum: - X[0,4,9] - X[1,4,9] - X[2,4,9]
   + 14 replenishment_time <= 0
 time_constraint_4_10_for_minimum: - X[0,4,10] - X[1,4,10] - X[2,4,10]
   + 8 replenishment_time <= 0
 time_constraint_4_11_for_minimum: - X[0,4,11] - X[1,4,11] - X[2,4,11]
   + 14 replenishment_time <= 0
 time_constraint_4_12_for_minimum: - X[0,4,12] - X[1,4,12] - X[2,4,12]
   + 15 replenishment_time <= 0
 time_constraint_4_13_for_minimum: - X[0,4,13] - X[1,4,13] - X[2,4,13]
   + 6 replenishment_time <= 0
 time_constraint_4_14_for_minimum: - X[0,4,14] - X[1,4,14] - X[2,4,14]
   + 18 replenishment_time <= 0
 time_constraint_5_0_for_minimum: - X[0,5,0] - X[1,5,0] - X[2,5,0]
   + 13 replenishment_time <= 0
 time_constraint_5_1_for_minimum: - X[0,5,1] - X[1,5,1] - X[2,5,1]
   + 9 replenishment_time <= 0
 time_constraint_5_2_for_minimum: - X[0,5,2] - X[1,5,2] - X[2,5,2]
   + 6 replenishment_time <= 0
 time_constraint_5_3_for_minimum: - X[0,5,3] - X[1,5,3] - X[2,5,3]
   + 8 replenishment_time <= 0
 time_constraint_5_4_for_minimum: - X[0,5,4] - X[1,5,4] - X[2,5,4]
   + 5 replenishment_time <= 0
 time_constraint_5_5_for_minimum: - X[0,5,5] - X[1,5,5] - X[2,5,5]
   + 11 replenishment_time <= 0
 time_constraint_5_6_for_minimum: - X[0,5,6] - X[1,5,6] - X[2,5,6]
   + 7 replenishment_time <= 0
 time_constraint_5_7_for_minimum: - X[0,5,7] - X[1,5,7] - X[2,5,7]
   + 6 replenishment_time <= 0
 time_constraint_5_8_for_minimum: - X[0,5,8] - X[1,5,8] - X[2,5,8]
   + 11 replenishment_time <= 0
 time_constraint_5_9_for_minimum: - X[0,5,9] - X[1,5,9] - X[2,5,9]
   + 5 replenishment_time <= 0
 time_constraint_5_10_for_minimum: - X[0,5,10] - X[1,5,10] - X[2,5,10]
   + 7 replenishment_time <= 0
 time_constraint_5_11_for_minimum: - X[0,5,11] - X[1,5,11] - X[2,5,11]
   + 9 replenishment_time <= 0
 time_constraint_5_12_for_minimum: - X[0,5,12] - X[1,5,12] - X[2,5,12]
   + 13 replenishment_time <= 0
 time_constraint_5_13_for_minimum: - X[0,5,13] - X[1,5,13] - X[2,5,13]
   + 6 replenishment_time <= 0
 time_constraint_5_14_for_minimum: - X[0,5,14] - X[1,5,14] - X[2,5,14]
   + 9 replenishment_time <= 0
 time_constraint_6_0_for_minimum: - X[0,6,0] - X[1,6,0] - X[2,6,0]
   + 19 replenishment_time <= 0
 time_constraint_6_1_for_minimum: - X[0,6,1] - X[1,6,1] - X[2,6,1]
   + 6 replenishment_time <= 0
 time_constraint_6_2_for_minimum: - X[0,6,2] - X[1,6,2] - X[2,6,2]
   + 11 replenishment_time <= 0
 time_constraint_6_3_for_minimum: - X[0,6,3] - X[1,6,3] - X[2,6,3]
   + 22 replenishment_time <= 0
 time_constraint_6_4_for_minimum: - X[0,6,4] - X[1,6,4] - X[2,6,4]
   + 17 replenishment_time <= 0
 time_constraint_6_5_for_minimum: - X[0,6,5] - X[1,6,5] - X[2,6,5]
   + 25 replenishment_time <= 0
 time_constraint_6_6_for_minimum: - X[0,6,6] - X[1,6,6] - X[2,6,6]
   + 18 replenishment_time <= 0
 time_constraint_6_7_for_minimum: - X[0,6,7] - X[1,6,7] - X[2,6,7]
   + 8 replenishment_time <= 0
 time_constraint_6_8_for_minimum: - X[0,6,8] - X[1,6,8] - X[2,6,8]
   + 19 replenishment_time <= 0
 time_constraint_6_9_for_minimum: - X[0,6,9] - X[1,6,9] - X[2,6,9]
   + 26 replenishment_time <= 0
 time_constraint_6_10_for_minimum: - X[0,6,10] - X[1,6,10] - X[2,6,10]
   + 16 replenishment_time <= 0
 time_constraint_6_11_for_minimum: - X[0,6,11] - X[1,6,11] - X[2,6,11]
   + 19 replenishment_time <= 0
 time_constraint_6_12_for_minimum: - X[0,6,12] - X[1,6,12] - X[2,6,12]
   + 16 replenishment_time <= 0
 time_constraint_6_13_for_minimum: - X[0,6,13] - X[1,6,13] - X[2,6,13]
   + 27 replenishment_time <= 0
 time_constraint_6_14_for_minimum: - X[0,6,14] - X[1,6,14] - X[2,6,14]
   + 14 replenishment_time <= 0
 time_constraint_7_0_for_minimum: - X[0,7,0] - X[1,7,0] - X[2,7,0]
   + 11 replenishment_time <= 0
 time_constraint_7_1_for_minimum: - X[0,7,1] - X[1,7,1] - X[2,7,1]
   + 8 replenishment_time <= 0
 time_constraint_7_2_for_minimum: - X[0,7,2] - X[1,7,2] - X[2,7,2]
   + 5 replenishment_time <= 0
 time_constraint_7_3_for_minimum: - X[0,7,3] - X[1,7,3] - X[2,7,3]
   + 13 replenishment_time <= 0
 time_constraint_7_4_for_minimum: - X[0,7,4] - X[1,7,4] - X[2,7,4]
   + 17 replenishment_time <= 0
 time_constraint_7_5_for_minimum: - X[0,7,5] - X[1,7,5] - X[2,7,5]
   + 12 replenishment_time <= 0
 time_constraint_7_6_for_minimum: - X[0,7,6] - X[1,7,6] - X[2,7,6]
   + 16 replenishment_time <= 0
 time_constraint_7_7_for_minimum: - X[0,7,7] - X[1,7,7] - X[2,7,7]
   + 6 replenishment_time <= 0
 time_constraint_7_8_for_minimum: - X[0,7,8] - X[1,7,8] - X[2,7,8]
   + 17 replenishment_time <= 0
 time_constraint_7_9_for_minimum: - X[0,7,9] - X[1,7,9] - X[2,7,9]
   + 3 replenishment_time <= 0
 time_constraint_7_10_for_minimum: - X[0,7,10] - X[1,7,10] - X[2,7,10]
   + 6 replenishment_time <= 0
 time_constraint_7_11_for_minimum: - X[0,7,11] - X[1,7,11] - X[2,7,11]
   + 5 replenishment_time <= 0
 time_constraint_7_12_for_minimum: - X[0,7,12] - X[1,7,12] - X[2,7,12]
   + 17 replenishment_time <= 0
 time_constraint_7_13_for_minimum: - X[0,7,13] - X[1,7,13] - X[2,7,13]
   + 17 replenishment_time <= 0
 time_constraint_7_14_for_minimum: - X[0,7,14] - X[1,7,14] - X[2,7,14]
   + 12 replenishment_time <= 0
 time_constraint_8_0_for_minimum: - X[0,8,0] - X[1,8,0] - X[2,8,0]
   + 4 replenishment_time <= 0
 time_constraint_8_1_for_minimum: - X[0,8,1] - X[1,8,1] - X[2,8,1]
   + 5 replenishment_time <= 0
 time_constraint_8_2_for_minimum: - X[0,8,2] - X[1,8,2] - X[2,8,2]
   + 22 replenishment_time <= 0
 time_constraint_8_3_for_minimum: - X[0,8,3] - X[1,8,3] - X[2,8,3]
   + 21 replenishment_time <= 0
 time_constraint_8_4_for_minimum: - X[0,8,4] - X[1,8,4] - X[2,8,4]
   + 4 replenishment_time <= 0
 time_constraint_8_5_for_minimum: - X[0,8,5] - X[1,8,5] - X[2,8,5]
   + 11 replenishment_time <= 0
 time_constraint_8_6_for_minimum: - X[0,8,6] - X[1,8,6] - X[2,8,6]
   + 22 replenishment_time <= 0
 time_constraint_8_7_for_minimum: - X[0,8,7] - X[1,8,7] - X[2,8,7]
   + 5 replenishment_time <= 0
 time_constraint_8_8_for_minimum: - X[0,8,8] - X[1,8,8] - X[2,8,8]
   + 16 replenishment_time <= 0
 time_constraint_8_9_for_minimum: - X[0,8,9] - X[1,8,9] - X[2,8,9]
   + 22 replenishment_time <= 0
 time_constraint_8_10_for_minimum: - X[0,8,10] - X[1,8,10] - X[2,8,10]
   + 9 replenishment_time <= 0
 time_constraint_8_11_for_minimum: - X[0,8,11] - X[1,8,11] - X[2,8,11]
   + 17 replenishment_time <= 0
 time_constraint_8_12_for_minimum: - X[0,8,12] - X[1,8,12] - X[2,8,12]
   + 14 replenishment_time <= 0
 time_constraint_8_13_for_minimum: - X[0,8,13] - X[1,8,13] - X[2,8,13]
   + 16 replenishment_time <= 0
 time_constraint_8_14_for_minimum: - X[0,8,14] - X[1,8,14] - X[2,8,14]
   + 13 replenishment_time <= 0
 time_constraint_9_0_for_minimum: - X[0,9,0] - X[1,9,0] - X[2,9,0]
   + 11 replenishment_time <= 0
 time_constraint_9_1_for_minimum: - X[0,9,1] - X[1,9,1] - X[2,9,1]
   + 11 replenishment_time <= 0
 time_constraint_9_2_for_minimum: - X[0,9,2] - X[1,9,2] - X[2,9,2]
   + 12 replenishment_time <= 0
 time_constraint_9_3_for_minimum: - X[0,9,3] - X[1,9,3] - X[2,9,3]
   + 7 replenishment_time <= 0
 time_constraint_9_4_for_minimum: - X[0,9,4] - X[1,9,4] - X[2,9,4]
   + 11 replenishment_time <= 0
 time_constraint_9_5_for_minimum: - X[0,9,5] - X[1,9,5] - X[2,9,5]
   + 10 replenishment_time <= 0
 time_constraint_9_6_for_minimum: - X[0,9,6] - X[1,9,6] - X[2,9,6]
   + 8 replenishment_time <= 0
 time_constraint_9_7_for_minimum: - X[0,9,7] - X[1,9,7] - X[2,9,7]
   + 11 replenishment_time <= 0
 time_constraint_9_8_for_minimum: - X[0,9,8] - X[1,9,8] - X[2,9,8]
   + 12 replenishment_time <= 0
 time_constraint_9_9_for_minimum: - X[0,9,9] - X[1,9,9] - X[2,9,9]
   + 11 replenishment_time <= 0
 time_constraint_9_10_for_minimum: - X[0,9,10] - X[1,9,10] - X[2,9,10]
   + 9 replenishment_time <= 0
 time_constraint_9_11_for_minimum: - X[0,9,11] - X[1,9,11] - X[2,9,11]
   + 7 replenishment_time <= 0
 time_constraint_9_12_for_minimum: - X[0,9,12] - X[1,9,12] - X[2,9,12]
   + 7 replenishment_time <= 0
 time_constraint_9_13_for_minimum: - X[0,9,13] - X[1,9,13] - X[2,9,13]
   + 10 replenishment_time <= 0
 time_constraint_9_14_for_minimum: - X[0,9,14] - X[1,9,14] - X[2,9,14]
   + 8 replenishment_time <= 0
 capacity_constraint_0_compartments: 19 X[0,0,0] + 15 X[0,0,1]
   + 24 X[0,0,2] + 18 X[0,0,3] + 22 X[0,0,4] + 19 X[0,0,5] + 23 X[0,0,6]
   + 23 X[0,0,7] + 20 X[0,0,8] + 21 X[0,0,9] + 16 X[0,0,10] + 19 X[0,0,11]
   + 19 X[0,0,12] + 20 X[0,0,13] + 24 X[0,0,14] + 19 X[0,1,0] + 15 X[0,1,1]
   + 24 X[0,1,2] + 18 X[0,1,3] + 22 X[0,1,4] + 19 X[0,1,5] + 23 X[0,1,6]
   + 23 X[0,1,7] + 20 X[0,1,8] + 21 X[0,1,9] + 16 X[0,1,10] + 19 X[0,1,11]
   + 19 X[0,1,12] + 20 X[0,1,13] + 24 X[0,1,14] + 19 X[0,2,0] + 15 X[0,2,1]
   + 24 X[0,2,2] + 18 X[0,2,3] + 22 X[0,2,4] + 19 X[0,2,5] + 23 X[0,2,6]
   + 23 X[0,2,7] + 20 X[0,2,8] + 21 X[0,2,9] + 16 X[0,2,10] + 19 X[0,2,11]
   + 19 X[0,2,12] + 20 X[0,2,13] + 24 X[0,2,14] + 19 X[0,3,0] + 15 X[0,3,1]
   + 24 X[0,3,2] + 18 X[0,3,3] + 22 X[0,3,4] + 19 X[0,3,5] + 23 X[0,3,6]
   + 23 X[0,3,7] + 20 X[0,3,8] + 21 X[0,3,9] + 16 X[0,3,10] + 19 X[0,3,11]
   + 19 X[0,3,12] + 20 X[0,3,13] + 24 X[0,3,14] + 19 X[0,4,0] + 15 X[0,4,1]
   + 24 X[0,4,2] + 18 X[0,4,3] + 22 X[0,4,4] + 19 X[0,4,5] + 23 X[0,4,6]
   + 23 X[0,4,7] + 20 X[0,4,8] + 21 X[0,4,9] + 16 X[0,4,10] + 19 X[0,4,11]
   + 19 X[0,4,12] + 20 X[0,4,13] + 24 X[0,4,14] + 19 X[0,5,0] + 15 X[0,5,1]
   + 24 X[0,5,2] + 18 X[0,5,3] + 22 X[0,5,4] + 19 X[0,5,5] + 23 X[0,5,6]
   + 23 X[0,5,7] + 20 X[0,5,8] + 21 X[0,5,9] + 16 X[0,5,10] + 19 X[0,5,11]
   + 19 X[0,5,12] + 20 X[0,5,13] + 24 X[0,5,14] + 19 X[0,6,0] + 15 X[0,6,1]
   + 24 X[0,6,2] + 18 X[0,6,3] + 22 X[0,6,4] + 19 X[0,6,5] + 23 X[0,6,6]
   + 23 X[0,6,7] + 20 X[0,6,8] + 21 X[0,6,9] + 16 X[0,6,10] + 19 X[0,6,11]
   + 19 X[0,6,12] + 20 X[0,6,13] + 24 X[0,6,14] + 19 X[0,7,0] + 15 X[0,7,1]
   + 24 X[0,7,2] + 18 X[0,7,3] + 22 X[0,7,4] + 19 X[0,7,5] + 23 X[0,7,6]
   + 23 X[0,7,7] + 20 X[0,7,8] + 21 X[0,7,9] + 16 X[0,7,10] + 19 X[0,7,11]
   + 19 X[0,7,12] + 20 X[0,7,13] + 24 X[0,7,14] + 19 X[0,8,0] + 15 X[0,8,1]
   + 24 X[0,8,2] + 18 X[0,8,3] + 22 X[0,8,4] + 19 X[0,8,5] + 23 X[0,8,6]
   + 23 X[0,8,7] + 20 X[0,8,8] + 21 X[0,8,9] + 16 X[0,8,10] + 19 X[0,8,11]
   + 19 X[0,8,12] + 20 X[0,8,13] + 24 X[0,8,14] + 19 X[0,9,0] + 15 X[0,9,1]
   + 24 X[0,9,2] + 18 X[0,9,3] + 22 X[0,9,4] + 19 X[0,9,5] + 23 X[0,9,6]
   + 23 X[0,9,7] + 20 X[0,9,8] + 21 X[0,9,9] + 16 X[0,9,10] + 19 X[0,9,11]
   + 19 X[0,9,12] + 20 X[0,9,13] + 24 X[0,9,14] <= 19789
 capacity_constraint_1_compartments: 19 X[1,0,0] + 15 X[1,0,1]
   + 24 X[1,0,2] + 18 X[1,0,3] + 22 X[1,0,4] + 19 X[1,0,5] + 23 X[1,0,6]
   + 23 X[1,0,7] + 20 X[1,0,8] + 21 X[1,0,9] + 16 X[1,0,10] + 19 X[1,0,11]
   + 19 X[1,0,12] + 20 X[1,0,13] + 24 X[1,0,14] + 19 X[1,1,0] + 15 X[1,1,1]
   + 24 X[1,1,2] + 18 X[1,1,3] + 22 X[1,1,4] + 19 X[1,1,5] + 23 X[1,1,6]
   + 23 X[1,1,7] + 20 X[1,1,8] + 21 X[1,1,9] + 16 X[1,1,10] + 19 X[1,1,11]
   + 19 X[1,1,12] + 20 X[1,1,13] + 24 X[1,1,14] + 19 X[1,2,0] + 15 X[1,2,1]
   + 24 X[1,2,2] + 18 X[1,2,3] + 22 X[1,2,4] + 19 X[1,2,5] + 23 X[1,2,6]
   + 23 X[1,2,7] + 20 X[1,2,8] + 21 X[1,2,9] + 16 X[1,2,10] + 19 X[1,2,11]
   + 19 X[1,2,12] + 20 X[1,2,13] + 24 X[1,2,14] + 19 X[1,3,0] + 15 X[1,3,1]
   + 24 X[1,3,2] + 18 X[1,3,3] + 22 X[1,3,4] + 19 X[1,3,5] + 23 X[1,3,6]
   + 23 X[1,3,7] + 20 X[1,3,8] + 21 X[1,3,9] + 16 X[1,3,10] + 19 X[1,3,11]
   + 19 X[1,3,12] + 20 X[1,3,13] + 24 X[1,3,14] + 19 X[1,4,0] + 15 X[1,4,1]
   + 24 X[1,4,2] + 18 X[1,4,3] + 22 X[1,4,4] + 19 X[1,4,5] + 23 X[1,4,6]
   + 23 X[1,4,7] + 20 X[1,4,8] + 21 X[1,4,9] + 16 X[1,4,10] + 19 X[1,4,11]
   + 19 X[1,4,12] + 20 X[1,4,13] + 24 X[1,4,14] + 19 X[1,5,0] + 15 X[1,5,1]
   + 24 X[1,5,2] + 18 X[1,5,3] + 22 X[1,5,4] + 19 X[1,5,5] + 23 X[1,5,6]
   + 23 X[1,5,7] + 20 X[1,5,8] + 21 X[1,5,9] + 16 X[1,5,10] + 19 X[1,5,11]
   + 19 X[1,5,12] + 20 X[1,5,13] + 24 X[1,5,14] + 19 X[1,6,0] + 15 X[1,6,1]
   + 24 X[1,6,2] + 18 X[1,6,3] + 22 X[1,6,4] + 19 X[1,6,5] + 23 X[1,6,6]
   + 23 X[1,6,7] + 20 X[1,6,8] + 21 X[1,6,9] + 16 X[1,6,10] + 19 X[1,6,11]
   + 19 X[1,6,12] + 20 X[1,6,13] + 24 X[1,6,14] + 19 X[1,7,0] + 15 X[1,7,1]
   + 24 X[1,7,2] + 18 X[1,7,3] + 22 X[1,7,4] + 19 X[1,7,5] + 23 X[1,7,6]
   + 23 X[1,7,7] + 20 X[1,7,8] + 21 X[1,7,9] + 16 X[1,7,10] + 19 X[1,7,11]
   + 19 X[1,7,12] + 20 X[1,7,13] + 24 X[1,7,14] + 19 X[1,8,0] + 15 X[1,8,1]
   + 24 X[1,8,2] + 18 X[1,8,3] + 22 X[1,8,4] + 19 X[1,8,5] + 23 X[1,8,6]
   + 23 X[1,8,7] + 20 X[1,8,8] + 21 X[1,8,9] + 16 X[1,8,10] + 19 X[1,8,11]
   + 19 X[1,8,12] + 20 X[1,8,13] + 24 X[1,8,14] + 19 X[1,9,0] + 15 X[1,9,1]
   + 24 X[1,9,2] + 18 X[1,9,3] + 22 X[1,9,4] + 19 X[1,9,5] + 23 X[1,9,6]
   + 23 X[1,9,7] + 20 X[1,9,8] + 21 X[1,9,9] + 16 X[1,9,10] + 19 X[1,9,11]
   + 19 X[1,9,12] + 20 X[1,9,13] + 24 X[1,9,14] <= 18151
 capacity_constraint_2_compartments: 19 X[2,0,0] + 15 X[2,0,1]
   + 24 X[2,0,2] + 18 X[2,0,3] + 22 X[2,0,4] + 19 X[2,0,5] + 23 X[2,0,6]
   + 23 X[2,0,7] + 20 X[2,0,8] + 21 X[2,0,9] + 16 X[2,0,10] + 19 X[2,0,11]
   + 19 X[2,0,12] + 20 X[2,0,13] + 24 X[2,0,14] + 19 X[2,1,0] + 15 X[2,1,1]
   + 24 X[2,1,2] + 18 X[2,1,3] + 22 X[2,1,4] + 19 X[2,1,5] + 23 X[2,1,6]
   + 23 X[2,1,7] + 20 X[2,1,8] + 21 X[2,1,9] + 16 X[2,1,10] + 19 X[2,1,11]
   + 19 X[2,1,12] + 20 X[2,1,13] + 24 X[2,1,14] + 19 X[2,2,0] + 15 X[2,2,1]
   + 24 X[2,2,2] + 18 X[2,2,3] + 22 X[2,2,4] + 19 X[2,2,5] + 23 X[2,2,6]
   + 23 X[2,2,7] + 20 X[2,2,8] + 21 X[2,2,9] + 16 X[2,2,10] + 19 X[2,2,11]
   + 19 X[2,2,12] + 20 X[2,2,13] + 24 X[2,2,14] + 19 X[2,3,0] + 15 X[2,3,1]
   + 24 X[2,3,2] + 18 X[2,3,3] + 22 X[2,3,4] + 19 X[2,3,5] + 23 X[2,3,6]
   + 23 X[2,3,7] + 20 X[2,3,8] + 21 X[2,3,9] + 16 X[2,3,10] + 19 X[2,3,11]
   + 19 X[2,3,12] + 20 X[2,3,13] + 24 X[2,3,14] + 19 X[2,4,0] + 15 X[2,4,1]
   + 24 X[2,4,2] + 18 X[2,4,3] + 22 X[2,4,4] + 19 X[2,4,5] + 23 X[2,4,6]
   + 23 X[2,4,7] + 20 X[2,4,8] + 21 X[2,4,9] + 16 X[2,4,10] + 19 X[2,4,11]
   + 19 X[2,4,12] + 20 X[2,4,13] + 24 X[2,4,14] + 19 X[2,5,0] + 15 X[2,5,1]
   + 24 X[2,5,2] + 18 X[2,5,3] + 22 X[2,5,4] + 19 X[2,5,5] + 23 X[2,5,6]
   + 23 X[2,5,7] + 20 X[2,5,8] + 21 X[2,5,9] + 16 X[2,5,10] + 19 X[2,5,11]
   + 19 X[2,5,12] + 20 X[2,5,13] + 24 X[2,5,14] + 19 X[2,6,0] + 15 X[2,6,1]
   + 24 X[2,6,2] + 18 X[2,6,3] + 22 X[2,6,4] + 19 X[2,6,5] + 23 X[2,6,6]
   + 23 X[2,6,7] + 20 X[2,6,8] + 21 X[2,6,9] + 16 X[2,6,10] + 19 X[2,6,11]
   + 19 X[2,6,12] + 20 X[2,6,13] + 24 X[2,6,14] + 19 X[2,7,0] + 15 X[2,7,1]
   + 24 X[2,7,2] + 18 X[2,7,3] + 22 X[2,7,4] + 19 X[2,7,5] + 23 X[2,7,6]
   + 23 X[2,7,7] + 20 X[2,7,8] + 21 X[2,7,9] + 16 X[2,7,10] + 19 X[2,7,11]
   + 19 X[2,7,12] + 20 X[2,7,13] + 24 X[2,7,14] + 19 X[2,8,0] + 15 X[2,8,1]
   + 24 X[2,8,2] + 18 X[2,8,3] + 22 X[2,8,4] + 19 X[2,8,5] + 23 X[2,8,6]
   + 23 X[2,8,7] + 20 X[2,8,8] + 21 X[2,8,9] + 16 X[2,8,10] + 19 X[2,8,11]
   + 19 X[2,8,12] + 20 X[2,8,13] + 24 X[2,8,14] + 19 X[2,9,0] + 15 X[2,9,1]
   + 24 X[2,9,2] + 18 X[2,9,3] + 22 X[2,9,4] + 19 X[2,9,5] + 23 X[2,9,6]
   + 23 X[2,9,7] + 20 X[2,9,8] + 21 X[2,9,9] + 16 X[2,9,10] + 19 X[2,9,11]
   + 19 X[2,9,12] + 20 X[2,9,13] + 24 X[2,9,14] <= 21549
Bounds
Generals
 X[0,0,0] X[0,0,1] X[0,0,2] X[0,0,3] X[0,0,4] X[0,0,5] X[0,0,6] X[0,0,7]
 X[0,0,8] X[0,0,9] X[0,0,10] X[0,0,11] X[0,0,12] X[0,0,13] X[0,0,14]
 X[0,1,0] X[0,1,1] X[0,1,2] X[0,1,3] X[0,1,4] X[0,1,5] X[0,1,6] X[0,1,7]
 X[0,1,8] X[0,1,9] X[0,1,10] X[0,1,11] X[0,1,12] X[0,1,13] X[0,1,14]
 X[0,2,0] X[0,2,1] X[0,2,2] X[0,2,3] X[0,2,4] X[0,2,5] X[0,2,6] X[0,2,7]
 X[0,2,8] X[0,2,9] X[0,2,10] X[0,2,11] X[0,2,12] X[0,2,13] X[0,2,14]
 X[0,3,0] X[0,3,1] X[0,3,2] X[0,3,3] X[0,3,4] X[0,3,5] X[0,3,6] X[0,3,7]
 X[0,3,8] X[0,3,9] X[0,3,10] X[0,3,11] X[0,3,12] X[0,3,13] X[0,3,14]
 X[0,4,0] X[0,4,1] X[0,4,2] X[0,4,3] X[0,4,4] X[0,4,5] X[0,4,6] X[0,4,7]
 X[0,4,8] X[0,4,9] X[0,4,10] X[0,4,11] X[0,4,12] X[0,4,13] X[0,4,14]
 X[0,5,0] X[0,5,1] X[0,5,2] X[0,5,3] X[0,5,4] X[0,5,5] X[0,5,6] X[0,5,7]
 X[0,5,8] X[0,5,9] X[0,5,10] X[0,5,11] X[0,5,12] X[0,5,13] X[0,5,14]
 X[0,6,0] X[0,6,1] X[0,6,2] X[0,6,3] X[0,6,4] X[0,6,5] X[0,6,6] X[0,6,7]
 X[0,6,8] X[0,6,9] X[0,6,10] X[0,6,11] X[0,6,12] X[0,6,13] X[0,6,14]
 X[0,7,0] X[0,7,1] X[0,7,2] X[0,7,3] X[0,7,4] X[0,7,5] X[0,7,6] X[0,7,7]
 X[0,7,8] X[0,7,9] X[0,7,10] X[0,7,11] X[0,7,12] X[0,7,13] X[0,7,14]
 X[0,8,0] X[0,8,1] X[0,8,2] X[0,8,3] X[0,8,4] X[0,8,5] X[0,8,6] X[0,8,7]
 X[0,8,8] X[0,8,9] X[0,8,10] X[0,8,11] X[0,8,12] X[0,8,13] X[0,8,14]
 X[0,9,0] X[0,9,1] X[0,9,2] X[0,9,3] X[0,9,4] X[0,9,5] X[0,9,6] X[0,9,7]
 X[0,9,8] X[0,9,9] X[0,9,10] X[0,9,11] X[0,9,12] X[0,9,13] X[0,9,14]
 X[1,0,0] X[1,0,1] X[1,0,2] X[1,0,3] X[1,0,4] X[1,0,5] X[1,0,6] X[1,0,7]
 X[1,0,8] X[1,0,9] X[1,0,10] X[1,0,11] X[1,0,12] X[1,0,13] X[1,0,14]
 X[1,1,0] X[1,1,1] X[1,1,2] X[1,1,3] X[1,1,4] X[1,1,5] X[1,1,6] X[1,1,7]
 X[1,1,8] X[1,1,9] X[1,1,10] X[1,1,11] X[1,1,12] X[1,1,13] X[1,1,14]
 X[1,2,0] X[1,2,1] X[1,2,2] X[1,2,3] X[1,2,4] X[1,2,5] X[1,2,6] X[1,2,7]
 X[1,2,8] X[1,2,9] X[1,2,10] X[1,2,11] X[1,2,12] X[1,2,13] X[1,2,14]
 X[1,3,0] X[1,3,1] X[1,3,2] X[1,3,3] X[1,3,4] X[1,3,5] X[1,3,6] X[1,3,7]
 X[1,3,8] X[1,3,9] X[1,3,10] X[1,3,11] X[1,3,12] X[1,3,13] X[1,3,14]
 X[1,4,0] X[1,4,1] X[1,4,2] X[1,4,3] X[1,4,4] X[1,4,5] X[1,4,6] X[1,4,7]
 X[1,4,8] X[1,4,9] X[1,4,10] X[1,4,11] X[1,4,12] X[1,4,13] X[1,4,14]
 X[1,5,0] X[1,5,1] X[1,5,2] X[1,5,3] X[1,5,4] X[1,5,5] X[1,5,6] X[1,5,7]
 X[1,5,8] X[1,5,9] X[1,5,10] X[1,5,11] X[1,5,12] X[1,5,13] X[1,5,14]
 X[1,6,0] X[1,6,1] X[1,6,2] X[1,6,3] X[1,6,4] X[1,6,5] X[1,6,6] X[1,6,7]
 X[1,6,8] X[1,6,9] X[1,6,10] X[1,6,11] X[1,6,12] X[1,6,13] X[1,6,14]
 X[1,7,0] X[1,7,1] X[1,7,2] X[1,7,3] X[1,7,4] X[1,7,5] X[1,7,6] X[1,7,7]
 X[1,7,8] X[1,7,9] X[1,7,10] X[1,7,11] X[1,7,12] X[1,7,13] X[1,7,14]
 X[1,8,0] X[1,8,1] X[1,8,2] X[1,8,3] X[1,8,4] X[1,8,5] X[1,8,6] X[1,8,7]
 X[1,8,8] X[1,8,9] X[1,8,10] X[1,8,11] X[1,8,12] X[1,8,13] X[1,8,14]
 X[1,9,0] X[1,9,1] X[1,9,2] X[1,9,3] X[1,9,4] X[1,9,5] X[1,9,6] X[1,9,7]
 X[1,9,8] X[1,9,9] X[1,9,10] X[1,9,11] X[1,9,12] X[1,9,13] X[1,9,14]
 X[2,0,0] X[2,0,1] X[2,0,2] X[2,0,3] X[2,0,4] X[2,0,5] X[2,0,6] X[2,0,7]
 X[2,0,8] X[2,0,9] X[2,0,10] X[2,0,11] X[2,0,12] X[2,0,13] X[2,0,14]
 X[2,1,0] X[2,1,1] X[2,1,2] X[2,1,3] X[2,1,4] X[2,1,5] X[2,1,6] X[2,1,7]
 X[2,1,8] X[2,1,9] X[2,1,10] X[2,1,11] X[2,1,12] X[2,1,13] X[2,1,14]
 X[2,2,0] X[2,2,1] X[2,2,2] X[2,2,3] X[2,2,4] X[2,2,5] X[2,2,6] X[2,2,7]
 X[2,2,8] X[2,2,9] X[2,2,10] X[2,2,11] X[2,2,12] X[2,2,13] X[2,2,14]
 X[2,3,0] X[2,3,1] X[2,3,2] X[2,3,3] X[2,3,4] X[2,3,5] X[2,3,6] X[2,3,7]
 X[2,3,8] X[2,3,9] X[2,3,10] X[2,3,11] X[2,3,12] X[2,3,13] X[2,3,14]
 X[2,4,0] X[2,4,1] X[2,4,2] X[2,4,3] X[2,4,4] X[2,4,5] X[2,4,6] X[2,4,7]
 X[2,4,8] X[2,4,9] X[2,4,10] X[2,4,11] X[2,4,12] X[2,4,13] X[2,4,14]
 X[2,5,0] X[2,5,1] X[2,5,2] X[2,5,3] X[2,5,4] X[2,5,5] X[2,5,6] X[2,5,7]
 X[2,5,8] X[2,5,9] X[2,5,10] X[2,5,11] X[2,5,12] X[2,5,13] X[2,5,14]
 X[2,6,0] X[2,6,1] X[2,6,2] X[2,6,3] X[2,6,4] X[2,6,5] X[2,6,6] X[2,6,7]
 X[2,6,8] X[2,6,9] X[2,6,10] X[2,6,11] X[2,6,12] X[2,6,13] X[2,6,14]
 X[2,7,0] X[2,7,1] X[2,7,2] X[2,7,3] X[2,7,4] X[2,7,5] X[2,7,6] X[2,7,7]
 X[2,7,8] X[2,7,9] X[2,7,10] X[2,7,11] X[2,7,12] X[2,7,13] X[2,7,14]
 X[2,8,0] X[2,8,1] X[2,8,2] X[2,8,3] X[2,8,4] X[2,8,5] X[2,8,6] X[2,8,7]
 X[2,8,8] X[2,8,9] X[2,8,10] X[2,8,11] X[2,8,12] X[2,8,13] X[2,8,14]
 X[2,9,0] X[2,9,1] X[2,9,2] X[2,9,3] X[2,9,4] X[2,9,5] X[2,9,6] X[2,9,7]
 X[2,9,8] X[2,9,9] X[2,9,10] X[2,9,11] X[2,9,12] X[2,9,13] X[2,9,14]
End
