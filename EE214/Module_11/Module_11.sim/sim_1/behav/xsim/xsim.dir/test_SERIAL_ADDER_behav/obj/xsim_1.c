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
<<<<<<< HEAD
extern void execute_249(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_259(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_26(char*, char *);
extern void execute_260(char*, char *);
extern void execute_32(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_265(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_39(char*, char *);
extern void execute_61(char*, char *);
extern void execute_74(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_91(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_224(char*, char *);
extern void execute_232(char*, char *);
extern void execute_103(char*, char *);
extern void execute_162(char*, char *);
extern void execute_218(char*, char *);
extern void execute_220(char*, char *);
extern void execute_222(char*, char *);
extern void execute_226(char*, char *);
extern void execute_228(char*, char *);
extern void execute_230(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_120(char*, char *);
extern void execute_155(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_239(char*, char *);
extern void execute_240(char*, char *);
=======
extern void execute_237(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_242(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_245(char*, char *);
extern void execute_246(char*, char *);
extern void execute_247(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_49(char*, char *);
extern void execute_62(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_79(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_212(char*, char *);
extern void execute_220(char*, char *);
extern void execute_91(char*, char *);
extern void execute_150(char*, char *);
extern void execute_206(char*, char *);
extern void execute_208(char*, char *);
extern void execute_210(char*, char *);
extern void execute_214(char*, char *);
extern void execute_216(char*, char *);
extern void execute_218(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_108(char*, char *);
extern void execute_143(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_224(char*, char *);
extern void execute_225(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_227(char*, char *);
extern void execute_228(char*, char *);
>>>>>>> 8c676840f2d6ed352e8a720fb7e570aabcf8c2b5
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
<<<<<<< HEAD
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_157(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_181(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_204(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_220(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_236(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_278(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_286(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_294(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_302(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[116] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_249, (funcp)execute_250, (funcp)execute_251, (funcp)execute_254, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_259, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_26, (funcp)execute_260, (funcp)execute_32, (funcp)execute_35, (funcp)execute_36, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_39, (funcp)execute_61, (funcp)execute_74, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_91, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_224, (funcp)execute_232, (funcp)execute_103, (funcp)execute_162, (funcp)execute_218, (funcp)execute_220, (funcp)execute_222, (funcp)execute_226, (funcp)execute_228, (funcp)execute_230, (funcp)execute_111, (funcp)execute_112, (funcp)execute_109, (funcp)execute_110, (funcp)execute_116, (funcp)execute_117, (funcp)execute_120, (funcp)execute_155, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_237, (funcp)execute_241, (funcp)execute_242, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_246, (funcp)execute_247, (funcp)execute_248, (funcp)execute_239, (funcp)execute_240, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_49, (funcp)transaction_51, (funcp)transaction_55, (funcp)transaction_56, (funcp)transaction_57, (funcp)transaction_58, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_72, (funcp)transaction_121, (funcp)transaction_130, (funcp)transaction_139, (funcp)transaction_148, (funcp)transaction_157, (funcp)transaction_181, (funcp)transaction_204, (funcp)transaction_212, (funcp)transaction_220, (funcp)transaction_228, (funcp)transaction_236, (funcp)transaction_244, (funcp)transaction_270, (funcp)transaction_278, (funcp)transaction_286, (funcp)transaction_294, (funcp)transaction_302, (funcp)transaction_310};
const int NumRelocateId= 116;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_SERIAL_ADDER_behav/xsim.reloc",  (void **)funcTab, 116);
	iki_vhdl_file_variable_register(dp + 66080);
	iki_vhdl_file_variable_register(dp + 66136);
=======
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_61(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_146(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_193(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_209(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_217(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_225(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_233(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_267(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_283(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_291(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[110] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_237, (funcp)execute_238, (funcp)execute_239, (funcp)execute_242, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_245, (funcp)execute_246, (funcp)execute_247, (funcp)execute_250, (funcp)execute_251, (funcp)execute_252, (funcp)execute_29, (funcp)execute_30, (funcp)execute_248, (funcp)execute_249, (funcp)execute_49, (funcp)execute_62, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_79, (funcp)execute_86, (funcp)execute_87, (funcp)execute_88, (funcp)execute_212, (funcp)execute_220, (funcp)execute_91, (funcp)execute_150, (funcp)execute_206, (funcp)execute_208, (funcp)execute_210, (funcp)execute_214, (funcp)execute_216, (funcp)execute_218, (funcp)execute_99, (funcp)execute_100, (funcp)execute_97, (funcp)execute_98, (funcp)execute_104, (funcp)execute_105, (funcp)execute_108, (funcp)execute_143, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_222, (funcp)execute_223, (funcp)execute_224, (funcp)execute_225, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_227, (funcp)execute_228, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_46, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_61, (funcp)transaction_110, (funcp)transaction_119, (funcp)transaction_128, (funcp)transaction_137, (funcp)transaction_146, (funcp)transaction_170, (funcp)transaction_193, (funcp)transaction_201, (funcp)transaction_209, (funcp)transaction_217, (funcp)transaction_225, (funcp)transaction_233, (funcp)transaction_259, (funcp)transaction_267, (funcp)transaction_275, (funcp)transaction_283, (funcp)transaction_291, (funcp)transaction_299};
const int NumRelocateId= 110;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_SERIAL_ADDER_behav/xsim.reloc",  (void **)funcTab, 110);
<<<<<<< HEAD
	iki_vhdl_file_variable_register(dp + 64296);
	iki_vhdl_file_variable_register(dp + 64352);
=======
	iki_vhdl_file_variable_register(dp + 64248);
	iki_vhdl_file_variable_register(dp + 64304);
>>>>>>> 8c676840f2d6ed352e8a720fb7e570aabcf8c2b5
>>>>>>> f5b32d4ca83d31785747b52779843e931249981e


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_SERIAL_ADDER_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_SERIAL_ADDER_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

<<<<<<< HEAD
	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 79040, dp + 79992, 0, 0, 0, 0, 1, 1);
=======
<<<<<<< HEAD
	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 80824, dp + 81696, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 80880, dp + 81752, 0, 7, 0, 7, 8, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 80920, dp + 81808, 0, 7, 0, 7, 8, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 80960, dp + 81864, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 81016, dp + 81920, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 91496, dp + 82648, 0, 0, 0, 0, 1, 1);
=======
	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 78992, dp + 79880, 0, 0, 0, 0, 1, 1);
>>>>>>> f5b32d4ca83d31785747b52779843e931249981e

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 79096, dp + 80048, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 79152, dp + 80104, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 79320, dp + 80272, 0, 0, 0, 0, 1, 1);

<<<<<<< HEAD
	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 85064, dp + 80664, 0, 0, 0, 0, 1, 1);
=======
	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 84952, dp + 80552, 0, 0, 0, 0, 1, 1);
>>>>>>> 8c676840f2d6ed352e8a720fb7e570aabcf8c2b5
>>>>>>> f5b32d4ca83d31785747b52779843e931249981e
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
    iki_set_sv_type_file_path_name("xsim.dir/test_SERIAL_ADDER_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/test_SERIAL_ADDER_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/test_SERIAL_ADDER_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}