// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VBounce_Counter_FSM__Syms.h"


//======================

void VBounce_Counter_FSM::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VBounce_Counter_FSM* t=(VBounce_Counter_FSM*)userthis;
    VBounce_Counter_FSM__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
	t->traceChgThis(vlSymsp, vcdp, code);
    }
}

//======================


void VBounce_Counter_FSM::traceChgThis(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
			       | (vlTOPp->__Vm_traceActivity 
				  >> 1U))))) {
	    vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
	}
	if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
			       | (vlTOPp->__Vm_traceActivity 
				  >> 2U))))) {
	    vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
	}
	vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VBounce_Counter_FSM::traceChgThis__2(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit(c+1,(vlTOPp->Bounce_Counter_FSM__DOT__r_CEN));
	vcdp->chgBus(c+2,(vlTOPp->Bounce_Counter_FSM__DOT__r_CURRENT_STATE),2);
	vcdp->chgBus(c+3,(vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER),14);
    }
}

void VBounce_Counter_FSM::traceChgThis__3(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus(c+4,(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE),2);
    }
}

void VBounce_Counter_FSM::traceChgThis__4(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit(c+5,(vlTOPp->i_100MHZCLK));
	vcdp->chgBit(c+6,(vlTOPp->i_RST));
	vcdp->chgBit(c+7,(vlTOPp->i_Signal));
	vcdp->chgBus(c+8,(vlTOPp->o_DATA),14);
	vcdp->chgBit(c+9,(vlTOPp->o_CEN));
    }
}
