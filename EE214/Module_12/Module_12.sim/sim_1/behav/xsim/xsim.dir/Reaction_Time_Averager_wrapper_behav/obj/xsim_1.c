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
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_258(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_9(char*, char *);
extern void execute_12(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_48(char*, char *);
extern void execute_61(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_78(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_211(char*, char *);
extern void execute_219(char*, char *);
extern void execute_90(char*, char *);
extern void execute_149(char*, char *);
extern void execute_205(char*, char *);
extern void execute_207(char*, char *);
extern void execute_209(char*, char *);
extern void execute_213(char*, char *);
extern void execute_215(char*, char *);
extern void execute_217(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_107(char*, char *);
extern void execute_142(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_221(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_228(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_238(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_245(char*, char *);
extern void execute_246(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_250(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_294(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_247(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[104] = {(funcp)execute_251, (funcp)execute_252, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_287, (funcp)execute_288, (funcp)execute_289, (funcp)execute_258, (funcp)execute_5, (funcp)execute_6, (funcp)execute_9, (funcp)execute_12, (funcp)execute_13, (funcp)execute_14, (funcp)execute_48, (funcp)execute_61, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_78, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_211, (funcp)execute_219, (funcp)execute_90, (funcp)execute_149, (funcp)execute_205, (funcp)execute_207, (funcp)execute_209, (funcp)execute_213, (funcp)execute_215, (funcp)execute_217, (funcp)execute_98, (funcp)execute_99, (funcp)execute_96, (funcp)execute_97, (funcp)execute_103, (funcp)execute_104, (funcp)execute_107, (funcp)execute_142, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_221, (funcp)execute_222, (funcp)execute_223, (funcp)execute_224, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_226, (funcp)execute_227, (funcp)execute_238, (funcp)execute_241, (funcp)execute_242, (funcp)execute_245, (funcp)execute_246, (funcp)execute_248, (funcp)execute_249, (funcp)execute_250, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_293, (funcp)execute_294, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_16, (funcp)transaction_24, (funcp)transaction_25, (funcp)transaction_26, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_49, (funcp)transaction_98, (funcp)transaction_107, (funcp)transaction_116, (funcp)transaction_125, (funcp)transaction_134, (funcp)transaction_158, (funcp)transaction_181, (funcp)transaction_189, (funcp)transaction_197, (funcp)transaction_205, (funcp)transaction_213, (funcp)transaction_221, (funcp)transaction_247, (funcp)transaction_255, (funcp)transaction_263, (funcp)transaction_271, (funcp)transaction_279, (funcp)transaction_287};
const int NumRelocateId= 104;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Reaction_Time_Averager_wrapper_behav/xsim.reloc",  (void **)funcTab, 104);
	iki_vhdl_file_variable_register(dp + 70024);
	iki_vhdl_file_variable_register(dp + 70080);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Reaction_Time_Averager_wrapper_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Reaction_Time_Averager_wrapper_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 92256, dp + 82456, 0, 0, 0, 0, 1, 1);
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
    iki_set_sv_type_file_path_name("xsim.dir/Reaction_Time_Averager_wrapper_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Reaction_Time_Averager_wrapper_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Reaction_Time_Averager_wrapper_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
