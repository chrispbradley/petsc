add_executable(run_dm_tests_1 ex1.c)
target_link_libraries(run_dm_tests_1 petsc)
ADDTEST(dm_tests_1_np2_1 2 run_dm_tests_1 output/ex1_1.out "-nox ")
add_executable(run_dm_tests_2 ex2.c)
target_link_libraries(run_dm_tests_2 petsc)
ADDTEST(dm_tests_2_np2_1 2 run_dm_tests_2 output/ex2_1.out "-nox ")
ADDTEST(dm_tests_2_np3_2 3 run_dm_tests_2 output/ex2_2.out "-wrap none -local_print -nox ")
ADDTEST(dm_tests_2_np3_3 3 run_dm_tests_2 output/ex2_3.out "-wrap ghosted -local_print -nox ")
add_executable(run_dm_tests_4 ex4.c)
target_link_libraries(run_dm_tests_4 petsc)
ADDTEST(dm_tests_4_np4_1 4 run_dm_tests_4 output/ex4_1.out " -nox  ")
add_executable(run_dm_tests_11 ex11.c)
target_link_libraries(run_dm_tests_11 petsc)
ADDTEST(dm_tests_11_np1_1 1 run_dm_tests_11 output/ex11_1.out "-dof 2  ")
ADDTEST(dm_tests_11_np2_2 2 run_dm_tests_11 output/ex11_2.out "-dof 2  ")
ADDTEST(dm_tests_11_np3_3 3 run_dm_tests_11 output/ex11_3.out "-dof 2  ")
add_executable(run_dm_tests_23 ex23.c)
target_link_libraries(run_dm_tests_23 petsc)
ADDTEST(dm_tests_23_np2_2 2 run_dm_tests_23 output/ex23_2.out "-two -native ")
add_executable(run_dm_tests_24 ex24.c)
target_link_libraries(run_dm_tests_24 petsc)
ADDTEST(dm_tests_24_np1_1 1 run_dm_tests_24 output/ex24_1.out " ")
ADDTEST(dm_tests_24_np2_1 2 run_dm_tests_24 output/ex24_2.out " ")
ADDTEST(dm_tests_24_np3_1 3 run_dm_tests_24 output/ex24_2.out " ")
ADDTEST(dm_tests_24_np4_1 4 run_dm_tests_24 output/ex24_2.out " ")
ADDTEST(dm_tests_24_np5_1 5 run_dm_tests_24 output/ex24_2.out " ")
ADDTEST(dm_tests_24_np6_1 6 run_dm_tests_24 output/ex24_2.out " ")
add_executable(run_dm_tests_25 ex25.c)
target_link_libraries(run_dm_tests_25 petsc)
ADDTEST(dm_tests_25_np1_1 1 run_dm_tests_25 output/ex25_1.out " ")
ADDTEST(dm_tests_25_np2_1 2 run_dm_tests_25 output/ex25_2.out " ")
ADDTEST(dm_tests_25_np3_1 3 run_dm_tests_25 output/ex25_2.out " ")
ADDTEST(dm_tests_25_np4_1 4 run_dm_tests_25 output/ex25_2.out " ")
ADDTEST(dm_tests_25_np5_1 5 run_dm_tests_25 output/ex25_2.out " ")
ADDTEST(dm_tests_25_np6_1 6 run_dm_tests_25 output/ex25_2.out " ")
