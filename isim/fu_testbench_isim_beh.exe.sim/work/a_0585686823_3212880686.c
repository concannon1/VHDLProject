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

/* This file is designed for use with ISim build 0x1cce1bb2 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//tholos.itserv.scss.tcd.ie/ugrad/concannh/CS2022/Project1/mux_4_to_1.vhd";
extern char *IEEE_P_3620187407;



static void work_a_0585686823_3212880686_p_0(char *t0)
{
    char t5[16];
    char t23[16];
    char t40[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    int64 t11;
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t24;
    char *t25;
    int t26;
    unsigned char t27;
    int64 t28;
    char *t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t41;
    char *t42;
    int t43;
    unsigned char t44;
    int64 t45;
    char *t46;
    unsigned char t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    unsigned char t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5140U);
    t3 = (t0 + 5169);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t19 = (t0 + 1512U);
    t20 = *((char **)t19);
    t19 = (t0 + 5140U);
    t21 = (t0 + 5171);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 0;
    t25 = (t24 + 4U);
    *((int *)t25) = 1;
    t25 = (t24 + 8U);
    *((int *)t25) = 1;
    t26 = (1 - 0);
    t9 = (t26 * 1);
    t9 = (t9 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t9;
    t27 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t20, t19, t21, t23);
    if (t27 != 0)
        goto LAB5;

LAB6:    t36 = (t0 + 1512U);
    t37 = *((char **)t36);
    t36 = (t0 + 5140U);
    t38 = (t0 + 5173);
    t41 = (t40 + 0U);
    t42 = (t41 + 0U);
    *((int *)t42) = 0;
    t42 = (t41 + 4U);
    *((int *)t42) = 1;
    t42 = (t41 + 8U);
    *((int *)t42) = 1;
    t43 = (1 - 0);
    t9 = (t43 * 1);
    t9 = (t9 + 1);
    t42 = (t41 + 12U);
    *((unsigned int *)t42) = t9;
    t44 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t37, t36, t38, t40);
    if (t44 != 0)
        goto LAB7;

LAB8:
LAB9:    t53 = (t0 + 1032U);
    t54 = *((char **)t53);
    t55 = *((unsigned char *)t54);
    t53 = (t0 + 3232);
    t56 = (t53 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    *((unsigned char *)t59) = t55;
    xsi_driver_first_trans_fast_port(t53);

LAB2:    t60 = (t0 + 3152);
    *((int *)t60) = 1;

LAB1:    return;
LAB3:    t11 = (1 * 1000LL);
    t7 = (t0 + 1032U);
    t12 = *((char **)t7);
    t13 = *((unsigned char *)t12);
    t7 = (t0 + 3232);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_delta(t7, 0U, 1, t11);
    t18 = (t0 + 3232);
    xsi_driver_intertial_reject(t18, t11, t11);
    goto LAB2;

LAB5:    t28 = (1 * 1000LL);
    t25 = (t0 + 1192U);
    t29 = *((char **)t25);
    t30 = *((unsigned char *)t29);
    t25 = (t0 + 3232);
    t31 = (t25 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    *((unsigned char *)t34) = t30;
    xsi_driver_first_trans_delta(t25, 0U, 1, t28);
    t35 = (t0 + 3232);
    xsi_driver_intertial_reject(t35, t28, t28);
    goto LAB2;

LAB7:    t45 = (1 * 1000LL);
    t42 = (t0 + 1352U);
    t46 = *((char **)t42);
    t47 = *((unsigned char *)t46);
    t42 = (t0 + 3232);
    t48 = (t42 + 56U);
    t49 = *((char **)t48);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    *((unsigned char *)t51) = t47;
    xsi_driver_first_trans_delta(t42, 0U, 1, t45);
    t52 = (t0 + 3232);
    xsi_driver_intertial_reject(t52, t45, t45);
    goto LAB2;

LAB10:    goto LAB2;

}


extern void work_a_0585686823_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0585686823_3212880686_p_0};
	xsi_register_didat("work_a_0585686823_3212880686", "isim/fu_testbench_isim_beh.exe.sim/work/a_0585686823_3212880686.didat");
	xsi_register_executes(pe);
}
