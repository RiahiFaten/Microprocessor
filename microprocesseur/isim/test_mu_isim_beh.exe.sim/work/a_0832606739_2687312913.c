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
static const char *ng0 = "C:/Users/hp/Desktop/Projet VHDL/microprocesseur/alu.vhdl";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_2687312913_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    static char *nl0[] = {&&LAB3, &&LAB5, &&LAB4, &&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 3072);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t10, t2, t1, t5, t4);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB11;

LAB12:    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB5:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t10, t2, t1, t5, t4);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB13;

LAB14:    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB6:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4852U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t10, t2, t1, 1);
    t5 = (t10 + 12U);
    t11 = *((unsigned int *)t5);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB15;

LAB16:    t6 = (t0 + 3072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t4, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t10, t2, t1, t5, t4);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB8:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t10, t2, t1, t5, t4);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB19;

LAB20:    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB9:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t10, t2, t1, t5, t4);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB21;

LAB22:    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB10:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4836U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 4852U);
    t6 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t10, t2, t1, t5, t4);
    t7 = (t10 + 12U);
    t11 = *((unsigned int *)t7);
    t12 = (1U * t11);
    t3 = (16U != t12);
    if (t3 == 1)
        goto LAB23;

LAB24:    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB2;

LAB11:    xsi_size_not_matching(16U, t12, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(16U, t12, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(16U, t12, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(16U, t12, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(16U, t12, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(16U, t12, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(16U, t12, 0);
    goto LAB24;

}


extern void work_a_0832606739_2687312913_init()
{
	static char *pe[] = {(void *)work_a_0832606739_2687312913_p_0};
	xsi_register_didat("work_a_0832606739_2687312913", "isim/test_mu_isim_beh.exe.sim/work/a_0832606739_2687312913.didat");
	xsi_register_executes(pe);
}
