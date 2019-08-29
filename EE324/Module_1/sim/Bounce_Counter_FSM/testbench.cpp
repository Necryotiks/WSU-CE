/*
 * =====================================================================================
 *
 *       Filename:  testbench.cpp
 *
 *    Description:  A verilator testbench
 *
 *        Version:  1.0
 *        Created:  08/28/2019 09:34:06 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include <verilated.h>
#include <verilated_vcd_c.h>
#include "VBounce_Counter_FSM.h"

int main(int argc,char**argv)
{
	Verilated::commandArgs(argc, argv);
	Verilated::traceEverOn(true);
	VBounce_Counter_FSM* module = new VBounce_Counter_FSM;
	VerilatedVcdC	*m_trace = new VerilatedVcdC;
	module->trace(m_trace,99);
	m_trace->open("./obj_dir/trace.vcd");
	int tick_count = 0;
	while(!Verilated::gotFinish())
	{
		tick_count++;
		module->i_100MHZCLK = 0;
		module->eval();
		m_trace->dump(10*tick_count);
		module->i_100MHZCLK = 1;
		module->eval();
		m_trace->dump(10*tick_count+5);//period*current_time+Inverse duty cycle
		if(tick_count == 20)
		{
			module->i_Signal = 1;
		}
		else if(tick_count == 30)
		{
			module->i_Signal = 0;
		}
		else if(tick_count >= 50)
		{
			module->i_Signal = 1;
		}
		if(tick_count == 100)
		{
			m_trace->close();
			break;
		}

	}
	module->final();
	delete module;
	delete m_trace;
}
