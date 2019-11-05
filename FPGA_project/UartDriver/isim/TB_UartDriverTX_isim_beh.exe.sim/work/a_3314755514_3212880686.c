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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Alessandro/Desktop/EFES_Fpga/UartDriver/UART_Fifo.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3314755514_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(83, ng0);

LAB3:    t1 = (t0 + 5396U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5304U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 5580U);
    t8 = *((char **)t1);
    t9 = *((unsigned char *)t8);
    t10 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t7, t9);
    t1 = (t0 + 10968);
    t11 = (t1 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t10;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);

LAB2:    t15 = (t0 + 10804);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3314755514_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(84, ng0);

LAB3:    t1 = (t0 + 5396U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5304U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t4, t6);
    t1 = (t0 + 11004);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t12 = (t0 + 10812);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3314755514_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(86, ng0);

LAB3:    t1 = (t0 + 6040U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t7);
    t9 = (t0 + 6040U);
    t10 = *((char **)t9);
    t11 = (0 - 1);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t8, t15);
    t17 = (t0 + 11040);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 10820);
    *((int *)t22) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3314755514_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(87, ng0);

LAB3:    t1 = (t0 + 6132U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5488U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 11076);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 10828);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3314755514_3212880686_p_4(char *t0)
{
    char t11[16];
    char t23[16];
    char t26[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;

LAB0:    xsi_set_current_line(103, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7212U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7212U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t27 = ((IEEE_P_2592010699) + 2332);
    t25 = xsi_base_array_concat(t25, t26, t27, (char)97, t22, t23, (char)99, (unsigned char)2, (char)101);
    t28 = (1U + 1U);
    t29 = (t28 + 1U);
    t30 = (t29 + 1U);
    t31 = (4U != t30);
    if (t31 == 1)
        goto LAB5;

LAB6:    t32 = (t0 + 11112);
    t33 = (t32 + 32U);
    t34 = *((char **)t33);
    t35 = (t34 + 40U);
    t36 = *((char **)t35);
    memcpy(t36, t25, 4U);
    xsi_driver_first_trans_delta(t32, 0U, 4U, 0LL);

LAB2:    t37 = (t0 + 10836);
    *((int *)t37) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t30, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_5(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7280U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7280U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7280U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11148);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 4U, 4U, 0LL);

LAB2:    t47 = (t0 + 10844);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_6(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7348U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7348U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7348U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11184);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 8U, 4U, 0LL);

LAB2:    t47 = (t0 + 10852);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_7(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7416U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7416U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7416U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11220);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 12U, 4U, 0LL);

LAB2:    t47 = (t0 + 10860);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_8(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7484U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7484U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7484U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11256);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 16U, 4U, 0LL);

LAB2:    t47 = (t0 + 10868);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_9(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7552U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7552U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7552U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11292);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 20U, 4U, 0LL);

LAB2:    t47 = (t0 + 10876);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_10(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7620U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7620U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7620U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11328);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 24U, 4U, 0LL);

LAB2:    t47 = (t0 + 10884);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_11(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7688U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7688U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7688U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11364);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 28U, 4U, 0LL);

LAB2:    t47 = (t0 + 10892);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_12(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7756U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7756U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7756U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11400);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 32U, 4U, 0LL);

LAB2:    t47 = (t0 + 10900);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_13(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7824U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7824U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7824U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11436);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 36U, 4U, 0LL);

LAB2:    t47 = (t0 + 10908);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_14(char *t0)
{
    char t11[16];
    char t23[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    char *t35;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t1 = (t0 + 7892U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 10);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t2 + t8);
    t9 = *((unsigned char *)t1);
    t12 = ((IEEE_P_2592010699) + 2332);
    t10 = xsi_base_array_concat(t10, t11, t12, (char)99, (unsigned char)2, (char)99, t9, (char)101);
    t13 = (t0 + 5212U);
    t14 = *((char **)t13);
    t13 = (t0 + 7892U);
    t15 = *((char **)t13);
    t16 = *((int *)t15);
    t17 = (t16 - 10);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t13 = (t14 + t20);
    t21 = *((unsigned char *)t13);
    t24 = ((IEEE_P_2592010699) + 2332);
    t22 = xsi_base_array_concat(t22, t23, t24, (char)97, t10, t11, (char)99, t21, (char)101);
    t25 = (t0 + 5948U);
    t26 = *((char **)t25);
    t25 = (t0 + 7892U);
    t27 = *((char **)t25);
    t28 = *((int *)t27);
    t29 = (t28 - 1);
    t30 = (t29 - 10);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t25 = (t26 + t33);
    t34 = *((unsigned char *)t25);
    t37 = ((IEEE_P_2592010699) + 2332);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t22, t23, (char)99, t34, (char)101);
    t38 = (1U + 1U);
    t39 = (t38 + 1U);
    t40 = (t39 + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB5;

LAB6:    t42 = (t0 + 11472);
    t43 = (t42 + 32U);
    t44 = *((char **)t43);
    t45 = (t44 + 40U);
    t46 = *((char **)t45);
    memcpy(t46, t35, 4U);
    xsi_driver_first_trans_delta(t42, 40U, 4U, 0LL);

LAB2:    t47 = (t0 + 10916);
    *((int *)t47) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, t40, 0);
    goto LAB6;

}

static void work_a_3314755514_3212880686_p_15(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(123, ng0);

LAB3:    t1 = (t0 + 5948U);
    t2 = *((char **)t1);
    t3 = (11 - 1);
    t4 = (t3 - 10);
    t5 = (t4 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 11508);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 10924);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3314755514_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3314755514_3212880686_p_0,(void *)work_a_3314755514_3212880686_p_1,(void *)work_a_3314755514_3212880686_p_2,(void *)work_a_3314755514_3212880686_p_3,(void *)work_a_3314755514_3212880686_p_4,(void *)work_a_3314755514_3212880686_p_5,(void *)work_a_3314755514_3212880686_p_6,(void *)work_a_3314755514_3212880686_p_7,(void *)work_a_3314755514_3212880686_p_8,(void *)work_a_3314755514_3212880686_p_9,(void *)work_a_3314755514_3212880686_p_10,(void *)work_a_3314755514_3212880686_p_11,(void *)work_a_3314755514_3212880686_p_12,(void *)work_a_3314755514_3212880686_p_13,(void *)work_a_3314755514_3212880686_p_14,(void *)work_a_3314755514_3212880686_p_15};
	xsi_register_didat("work_a_3314755514_3212880686", "isim/TB_UartDriverTX_isim_beh.exe.sim/work/a_3314755514_3212880686.didat");
	xsi_register_executes(pe);
}
