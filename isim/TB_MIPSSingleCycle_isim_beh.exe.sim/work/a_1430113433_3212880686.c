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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/muxmohamedadel/MIPS.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );


static void work_a_1430113433_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(196, ng0);

LAB3:    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5352U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 9040);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 8928);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1430113433_3212880686_p_1(char *t0)
{
    char t5[16];
    char t7[16];
    char t14[16];
    char t19[16];
    char *t1;
    char *t3;
    char *t4;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(206, ng0);

LAB3:    t1 = (t0 + 14926);
    t3 = (t0 + 2152U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (1 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 13964U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)97, t1, t7, (char)97, t4, t9, (char)101);
    t12 = (t0 + 2312U);
    t13 = *((char **)t12);
    t15 = ((IEEE_P_2592010699) + 4024);
    t16 = (t0 + 13980U);
    t12 = xsi_base_array_concat(t12, t14, t15, (char)97, t3, t5, (char)97, t13, t16, (char)101);
    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t0 + 13900U);
    t17 = xsi_base_array_concat(t17, t19, t20, (char)97, t12, t14, (char)97, t18, t21, (char)101);
    t11 = (2U + 5U);
    t22 = (t11 + 5U);
    t23 = (t22 + 16U);
    t24 = (28U != t23);
    if (t24 == 1)
        goto LAB5;

LAB6:    t25 = (t0 + 9104);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t17, 28U);
    xsi_driver_first_trans_fast(t25);

LAB2:    t30 = (t0 + 8944);
    *((int *)t30) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(28U, t23, 0);
    goto LAB6;

}

static void work_a_1430113433_3212880686_p_2(char *t0)
{
    char t8[16];
    char t10[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(215, ng0);

LAB3:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 6472U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4024);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 31;
    t12 = (t11 + 4U);
    *((int *)t12) = 28;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t13 = (28 - 31);
    t14 = (t13 * -1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t12 = (t0 + 14268U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)97, t1, t10, (char)97, t7, t12, (char)101);
    t14 = (4U + 28U);
    t15 = (32U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 9168);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 32U);
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 8960);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t14, 0);
    goto LAB6;

}


extern void work_a_1430113433_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1430113433_3212880686_p_0,(void *)work_a_1430113433_3212880686_p_1,(void *)work_a_1430113433_3212880686_p_2};
	xsi_register_didat("work_a_1430113433_3212880686", "isim/TB_MIPSSingleCycle_isim_beh.exe.sim/work/a_1430113433_3212880686.didat");
	xsi_register_executes(pe);
}
