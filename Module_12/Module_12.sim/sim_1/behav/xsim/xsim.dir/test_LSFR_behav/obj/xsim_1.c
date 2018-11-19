/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_26(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_84(char*, char *);
extern void execute_97(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_114(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_247(char*, char *);
extern void execute_255(char*, char *);
extern void execute_126(char*, char *);
extern void execute_185(char*, char *);
extern void execute_241(char*, char *);
extern void execute_243(char*, char *);
extern void execute_245(char*, char *);
extern void execute_249(char*, char *);
extern void execute_251(char*, char *);
extern void execute_253(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_143(char*, char *);
extern void execute_178(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_257(char*, char *);
extern void execute_258(char*, char *);
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_300(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_303(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_60(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_155(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_164(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_188(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_219(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_235(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_251(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_301(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_317(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[102] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_280, (funcp)execute_281, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_26, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_84, (funcp)execute_97, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_114, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_247, (funcp)execute_255, (funcp)execute_126, (funcp)execute_185, (funcp)execute_241, (funcp)execute_243, (funcp)execute_245, (funcp)execute_249, (funcp)execute_251, (funcp)execute_253, (funcp)execute_134, (funcp)execute_135, (funcp)execute_132, (funcp)execute_133, (funcp)execute_139, (funcp)execute_140, (funcp)execute_143, (funcp)execute_178, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_257, (funcp)execute_258, (funcp)execute_259, (funcp)execute_260, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_262, (funcp)execute_263, (funcp)execute_300, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_303, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_60, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_79, (funcp)transaction_128, (funcp)transaction_137, (funcp)transaction_146, (funcp)transaction_155, (funcp)transaction_164, (funcp)transaction_188, (funcp)transaction_211, (funcp)transaction_219, (funcp)transaction_227, (funcp)transaction_235, (funcp)transaction_243, (funcp)transaction_251, (funcp)transaction_277, (funcp)transaction_285, (funcp)transaction_293, (funcp)transaction_301, (funcp)transaction_309, (funcp)transaction_317};
const int NumRelocateId= 102;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_LSFR_behav/xsim.reloc",  (void **)funcTab, 102);
	iki_vhdl_file_variable_register(dp + 70192);
	iki_vhdl_file_variable_register(dp + 70248);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_LSFR_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_LSFR_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 84936, dp + 85448, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 85032, dp + 85560, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 100992, dp + 86456, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/test_LSFR_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/test_LSFR_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/test_LSFR_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
