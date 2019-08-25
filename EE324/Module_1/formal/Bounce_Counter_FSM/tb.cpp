#include <stdlib.h>
#include "VBounce_Counter_FSM.h"
#include "verilated.h"

int main(int argc, char **argv) {
	// Initialize Verilators variables
	Verilated::commandArgs(argc, argv);

	// Create an instance of our module under test
	VBounce_Counter_FSM *tb = new VBounce_Counter_FSM;

	// Tick the clock until we are done
	while(!Verilated::gotFinish()) {
		tb->i_100MHZCLK = 1;
		tb->eval();
		tb->i_100MHZCLK = 0;
		tb->eval();
	} exit(EXIT_SUCCESS);
}
