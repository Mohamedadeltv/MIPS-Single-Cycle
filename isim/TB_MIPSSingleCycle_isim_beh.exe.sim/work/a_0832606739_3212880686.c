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
static const char *ng0 = "E:/muxmohamedadel/ALU.vhd";



static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4460);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 4462);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 4464);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 4466);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(72, ng0);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4540);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t14 = (t0 + 4468);
    t16 = (t0 + 2912);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 4U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB2;

LAB4:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4472);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t21 = (5 - 3);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = (t0 + 4476);
    t4 = xsi_mem_cmp(t3, t1, 4U);
    if (t4 == 1)
        goto LAB14;

LAB20:    t6 = (t0 + 4480);
    t7 = xsi_mem_cmp(t6, t1, 4U);
    if (t7 == 1)
        goto LAB15;

LAB21:    t9 = (t0 + 4484);
    t10 = xsi_mem_cmp(t9, t1, 4U);
    if (t10 == 1)
        goto LAB16;

LAB22:    t12 = (t0 + 4488);
    t13 = xsi_mem_cmp(t12, t1, 4U);
    if (t13 == 1)
        goto LAB17;

LAB23:    t15 = (t0 + 4492);
    t24 = xsi_mem_cmp(t15, t1, 4U);
    if (t24 == 1)
        goto LAB18;

LAB24:
LAB19:    xsi_set_current_line(62, ng0);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4516);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB13:    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t21 = (5 - 3);
    t22 = (t21 * 1U);
    t23 = (0 + t22);
    t1 = (t2 + t23);
    t3 = (t0 + 4520);
    t4 = xsi_mem_cmp(t3, t1, 4U);
    if (t4 == 1)
        goto LAB27;

LAB30:    t6 = (t0 + 4524);
    t7 = xsi_mem_cmp(t6, t1, 4U);
    if (t7 == 1)
        goto LAB28;

LAB31:
LAB29:    xsi_set_current_line(70, ng0);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4536);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB26:    goto LAB2;

LAB12:;
LAB14:    xsi_set_current_line(53, ng0);
    t17 = (t0 + 4496);
    t19 = (t0 + 2912);
    t20 = (t19 + 56U);
    t25 = *((char **)t20);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 4U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB13;

LAB15:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4500);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB16:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 4504);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB17:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 4508);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB18:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4512);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB13;

LAB25:;
LAB27:    xsi_set_current_line(67, ng0);
    t9 = (t0 + 4528);
    t12 = (t0 + 2912);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t9, 4U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB26;

LAB28:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4532);
    t3 = (t0 + 2912);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB26;

LAB32:;
}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/TB_MIPSSingleCycle_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
