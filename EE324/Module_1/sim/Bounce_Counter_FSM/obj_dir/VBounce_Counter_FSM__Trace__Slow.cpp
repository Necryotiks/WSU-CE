// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VBounce_Counter_FSM__Syms.h"


//======================

void VBounce_Counter_FSM::trace(VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback(&VBounce_Counter_FSM::traceInit, &VBounce_Counter_FSM::traceFull, &VBounce_Counter_FSM::traceChg, this);
}
void VBounce_Counter_FSM::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VBounce_Counter_FSM* t=(VBounce_Counter_FSM*)userthis;
    VBounce_Counter_FSM__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) {
	VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vcdp->scopeEscape(' ');
    t->traceInitThis(vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VBounce_Counter_FSM::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VBounce_Counter_FSM* t=(VBounce_Counter_FSM*)userthis;
    VBounce_Counter_FSM__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis(vlSymsp, vcdp, code);
}

//======================


void VBounce_Counter_FSM::traceInitThis(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
	vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VBounce_Counter_FSM::traceFullThis(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VBounce_Counter_FSM::traceInitThis__1(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->declBit(c+5,"i_100MHZCLK",-1);
	vcdp->declBit(c+6,"i_RST",-1);
	vcdp->declBit(c+7,"i_Signal",-1);
	vcdp->declBus(c+8,"o_DATA",-1,13,0);
	vcdp->declBit(c+9,"o_CEN",-1);
	vcdp->declBit(c+5,"Bounce_Counter_FSM i_100MHZCLK",-1);
	vcdp->declBit(c+6,"Bounce_Counter_FSM i_RST",-1);
	vcdp->declBit(c+7,"Bounce_Counter_FSM i_Signal",-1);
	vcdp->declBus(c+8,"Bounce_Counter_FSM o_DATA",-1,13,0);
	vcdp->declBit(c+9,"Bounce_Counter_FSM o_CEN",-1);
	vcdp->declBus(c+10,"Bounce_Counter_FSM s_WAIT",-1,1,0);
	vcdp->declBus(c+11,"Bounce_Counter_FSM s_ASSERT",-1,1,0);
	vcdp->declBus(c+12,"Bounce_Counter_FSM s_DONE",-1,1,0);
	vcdp->declBit(c+5,"Bounce_Counter_FSM w_100MHZCLK",-1);
	vcdp->declBit(c+6,"Bounce_Counter_FSM w_RST",-1);
	vcdp->declBit(c+7,"Bounce_Counter_FSM w_Signal",-1);
	vcdp->declBit(c+1,"Bounce_Counter_FSM r_CEN",-1);
	vcdp->declBus(c+4,"Bounce_Counter_FSM r_NEXT_STATE",-1,1,0);
	vcdp->declBus(c+2,"Bounce_Counter_FSM r_CURRENT_STATE",-1,1,0);
	vcdp->declBus(c+3,"Bounce_Counter_FSM r_COUNTER",-1,13,0);
    }
}

void VBounce_Counter_FSM::traceFullThis__1(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->fullBit(c+1,(vlTOPp->Bounce_Counter_FSM__DOT__r_CEN));
	vcdp->fullBus(c+2,(vlTOPp->Bounce_Counter_FSM__DOT__r_CURRENT_STATE),2);
	vcdp->fullBus(c+3,(vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER),14);
	vcdp->fullBus(c+4,(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE),2);
	vcdp->fullBit(c+5,(vlTOPp->i_100MHZCLK));
	vcdp->fullBit(c+6,(vlTOPp->i_RST));
	vcdp->fullBit(c+7,(vlTOPp->i_Signal));
	vcdp->fullBus(c+8,(vlTOPp->o_DATA),14);
	vcdp->fullBit(c+9,(vlTOPp->o_CEN));
	vcdp->fullBus(c+10,(0U),2);
	vcdp->fullBus(c+11,(1U),2);
	vcdp->fullBus(c+12,(3U),2);
    }
}
