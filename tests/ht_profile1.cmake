# Decoding
add_test(NAME dec_p1_ht_01_11 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_01_b11.j2k -o ht_p1_01_b11.pgx)
add_test(NAME dec_p1_ht_01_12 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_01_b12.j2k -o ht_p1_01_b12.pgx)
add_test(NAME dec_p1_ht_02_11 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_02_b11.j2k -o ht_p1_02_b11.pgx)
add_test(NAME dec_p1_ht_02_12 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_02_b12.j2k -o ht_p1_02_b12.pgx)
add_test(NAME dec_p1_ht_03_11 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_03_b11.j2k -o ht_p1_03_b11.pgx)
add_test(NAME dec_p1_ht_03_12 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_03_b12.j2k -o ht_p1_03_b12.pgx)
add_test(NAME dec_p1_ht_04_9 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_04_b9.j2k -o ht_p1_04_b9.pgx)
add_test(NAME dec_p1_ht_05_11 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_05_b11.j2k -o ht_p1_05_b11.pgx)
add_test(NAME dec_p1_ht_06_11 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_06_b11.j2k -o ht_p1_06_b11.pgx)
add_test(NAME dec_p1_ht_07_11 COMMAND open_htj2k_dec -i ${CONFORMANCE_DATA_DIR}/ds1_ht_07_b11.j2k -o ht_p1_07_b11.pgx)

# calculate PAE and MSE
# 1
add_test(NAME comp_p1_ht_01_11 COMMAND imgcmp ht_p1_01_b11_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_01-0.pgx 1 0.001)
add_test(NAME comp_p1_ht_01_12 COMMAND imgcmp ht_p1_01_b12_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_01-0.pgx 0 0)
set_tests_properties(comp_p1_ht_01_11 PROPERTIES DEPENDS dec_p1_ht_01_11)
set_tests_properties(comp_p1_ht_01_12 PROPERTIES DEPENDS dec_p1_ht_01_12)
# 2
add_test(NAME comp_p1_ht_02_11r COMMAND imgcmp ht_p1_02_b11_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_02-0.pgx 7 0.865)
add_test(NAME comp_p1_ht_02_11g COMMAND imgcmp ht_p1_02_b11_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_02-1.pgx 6 0.716)
add_test(NAME comp_p1_ht_02_11b COMMAND imgcmp ht_p1_02_b11_02.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_02-2.pgx 8 1.151)
add_test(NAME comp_p1_ht_02_12r COMMAND imgcmp ht_p1_02_b12_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_02-0.pgx 5 0.765)
add_test(NAME comp_p1_ht_02_12g COMMAND imgcmp ht_p1_02_b12_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_02-1.pgx 4 0.616)
add_test(NAME comp_p1_ht_02_12b COMMAND imgcmp ht_p1_02_b12_02.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_02-2.pgx 6 1.051)
set_tests_properties(comp_p1_ht_02_11r comp_p1_ht_02_11g comp_p1_ht_02_11b PROPERTIES DEPENDS dec_p1_ht_02_11)
set_tests_properties(comp_p1_ht_02_12r comp_p1_ht_02_12g comp_p1_ht_02_12b PROPERTIES DEPENDS dec_p1_ht_02_12)
# 3
add_test(NAME comp_p1_ht_03_11a COMMAND imgcmp ht_p1_03_b11_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-0.pgx 2 0.300)
add_test(NAME comp_p1_ht_03_11b COMMAND imgcmp ht_p1_03_b11_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-1.pgx 3 0.24)
add_test(NAME comp_p1_ht_03_11c COMMAND imgcmp ht_p1_03_b11_02.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-2.pgx 3 0.25)
add_test(NAME comp_p1_ht_03_11d COMMAND imgcmp ht_p1_03_b11_03.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-3.pgx 2 0.001)
add_test(NAME comp_p1_ht_03_12a COMMAND imgcmp ht_p1_03_b12_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-0.pgx 2 0.300)
add_test(NAME comp_p1_ht_03_12b COMMAND imgcmp ht_p1_03_b12_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-1.pgx 2 0.210)
add_test(NAME comp_p1_ht_03_12c COMMAND imgcmp ht_p1_03_b12_02.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-2.pgx 1 0.200)
add_test(NAME comp_p1_ht_03_12d COMMAND imgcmp ht_p1_03_b12_03.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_03-3.pgx 0 0)
set_tests_properties(comp_p1_ht_03_11a comp_p1_ht_03_11b comp_p1_ht_03_11c comp_p1_ht_03_11d PROPERTIES DEPENDS dec_p1_ht_03_11)
set_tests_properties(comp_p1_ht_03_12a comp_p1_ht_03_12b comp_p1_ht_03_12c comp_p1_ht_03_12d PROPERTIES DEPENDS dec_p1_ht_03_12)
set_tests_properties(comp_p1_ht_03_12b  PROPERTIES WILL_FAIL true)
set_tests_properties(comp_p1_ht_03_12c  PROPERTIES WILL_FAIL true)
# 4
add_test(NAME comp_p1_ht_04_9 COMMAND imgcmp ht_p1_04_b9_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_04-0.pgx 624 3080)
set_tests_properties(comp_p1_ht_04_9 PROPERTIES DEPENDS dec_p1_ht_04_9)
# 5
add_test(NAME comp_p1_ht_05_11r COMMAND imgcmp ht_p1_05_b11_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_05-0.pgx 40 8.458)
add_test(NAME comp_p1_ht_05_11g COMMAND imgcmp ht_p1_05_b11_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_05-1.pgx 40 9.716)
add_test(NAME comp_p1_ht_05_11b COMMAND imgcmp ht_p1_05_b11_02.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_05-2.pgx 40 10.154)
set_tests_properties(comp_p1_ht_05_11r comp_p1_ht_05_11g comp_p1_ht_05_11b PROPERTIES DEPENDS dec_p1_ht_05_11)
# 6
add_test(NAME comp_p1_ht_06_11r COMMAND imgcmp ht_p1_06_b11_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_06-0.pgx 2 0.600)
add_test(NAME comp_p1_ht_06_11g COMMAND imgcmp ht_p1_06_b11_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_06-1.pgx 2 0.600)
add_test(NAME comp_p1_ht_06_11b COMMAND imgcmp ht_p1_06_b11_02.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_06-2.pgx 2 0.600)
set_tests_properties(comp_p1_ht_06_11r comp_p1_ht_06_11g comp_p1_ht_06_11b PROPERTIES DEPENDS dec_p1_ht_06_11)
# 7
add_test(NAME comp_p1_ht_07_11a COMMAND imgcmp ht_p1_07_b11_00.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_07-0.pgx 0 0)
add_test(NAME comp_p1_ht_07_11b COMMAND imgcmp ht_p1_07_b11_01.pgx ${CONFORMANCE_DATA_DIR}/references/c1p1_07-1.pgx 0 0)
set_tests_properties(comp_p1_ht_07_11a comp_p1_ht_07_11b PROPERTIES DEPENDS dec_p1_ht_07_11)