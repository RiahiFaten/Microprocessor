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
char *WORK_P_2081166822;
char *IEEE_P_1242562249;
char *IEEE_P_0774719531;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_2081166822_init();
    ieee_p_3499444699_init();
    ieee_p_0774719531_init();
    work_a_1965206512_1763716191_init();
    work_a_0832606739_2687312913_init();
    work_a_0826528353_3546385807_init();
    work_a_3412846255_3815924680_init();
    work_a_2274648968_0692964519_init();
    work_a_0652337147_1343496646_init();
    work_a_1044763936_0361336953_init();
    work_a_0130607589_2357248451_init();
    work_a_1946479806_0880918898_init();
    work_a_1212809311_2372691052_init();


    xsi_register_tops("work_a_1212809311_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_2081166822 = xsi_get_engine_memory("work_p_2081166822");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
