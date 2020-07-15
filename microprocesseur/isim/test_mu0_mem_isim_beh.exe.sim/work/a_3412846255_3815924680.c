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
static const char *ng0 = "C:/Users/hp/Desktop/Projet VHDL/microprocesseur/tristate.vhdl";



static void work_a_3412846255_3815924680_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t2 = (t2 + 1U);
    *((unsigned char *)t2) = (unsigned char)4;
    t5 = (t0 + 2912);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1192U);
    t5 = *((char **)t1);
    t1 = (t0 + 2912);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}


extern void work_a_3412846255_3815924680_init()
{
	static char *pe[] = {(void *)work_a_3412846255_3815924680_p_0};
	xsi_register_didat("work_a_3412846255_3815924680", "isim/test_mu0_mem_isim_beh.exe.sim/work/a_3412846255_3815924680.didat");
	xsi_register_executes(pe);
}
