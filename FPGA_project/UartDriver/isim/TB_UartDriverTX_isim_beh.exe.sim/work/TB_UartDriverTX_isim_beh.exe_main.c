/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *WORK_P_3647430093;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_3647430093_init();
    work_a_0486375513_3212880686_init();
    work_a_3734057397_3212880686_init();
    work_a_1947288536_3212880686_init();
    work_a_2010076020_3212880686_init();
    work_a_0818878108_2712257714_init();
    work_a_2389849016_3212880686_init();
    work_a_2443037535_3212880686_init();
    work_a_0259567504_3212880686_init();
    work_a_0199753489_1181938964_init();
    work_a_2296879555_2712257714_init();
    work_a_1097973800_3212880686_init();
    work_a_3161878346_3212880686_init();
    work_a_1628648614_3212880686_init();
    work_a_4155005399_1181938964_init();
    work_a_2298540653_3212880686_init();
    work_a_1344535767_3212880686_init();
    work_a_0883098610_1181938964_init();
    work_a_2024452653_3212880686_init();
    work_a_2716575211_3212880686_init();
    work_a_1651869769_3212880686_init();
    work_a_3314755514_3212880686_init();
    work_a_1421013145_3212880686_init();
    work_a_3516823487_2372691052_init();


    xsi_register_tops("work_a_3516823487_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_3647430093 = xsi_get_engine_memory("work_p_3647430093");

    return xsi_run_simulation(argc, argv);

}
