// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VBounce_Counter_FSM.h for the primary calling header

#include "VBounce_Counter_FSM.h"
#include "VBounce_Counter_FSM__Syms.h"


//--------------------
// STATIC VARIABLES

// Begin mtask footprint  all: 
VL_ST_SIG8(VBounce_Counter_FSM::__Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[8],1,0);

//--------------------

VL_CTOR_IMP(VBounce_Counter_FSM) {
    VBounce_Counter_FSM__Syms* __restrict vlSymsp = __VlSymsp = new VBounce_Counter_FSM__Syms(this, name());
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VBounce_Counter_FSM::__Vconfigure(VBounce_Counter_FSM__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VBounce_Counter_FSM::~VBounce_Counter_FSM() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VBounce_Counter_FSM::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VBounce_Counter_FSM::eval\n"); );
    VBounce_Counter_FSM__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
	VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	if (VL_UNLIKELY(++__VclockLoop > 100)) {
	    // About to fail, so enable debug to see what's not settling.
	    // Note you must run make with OPT=-DVL_DEBUG for debug prints.
	    int __Vsaved_debug = Verilated::debug();
	    Verilated::debug(1);
	    __Vchange = _change_request(vlSymsp);
	    Verilated::debug(__Vsaved_debug);
	    VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
	} else {
	    __Vchange = _change_request(vlSymsp);
	}
    } while (VL_UNLIKELY(__Vchange));
}

void VBounce_Counter_FSM::_eval_initial_loop(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	if (VL_UNLIKELY(++__VclockLoop > 100)) {
	    // About to fail, so enable debug to see what's not settling.
	    // Note you must run make with OPT=-DVL_DEBUG for debug prints.
	    int __Vsaved_debug = Verilated::debug();
	    Verilated::debug(1);
	    __Vchange = _change_request(vlSymsp);
	    Verilated::debug(__Vsaved_debug);
	    VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
	} else {
	    __Vchange = _change_request(vlSymsp);
	}
    } while (VL_UNLIKELY(__Vchange));
}

//--------------------
// Internal Methods

void VBounce_Counter_FSM::_initial__TOP__1(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_initial__TOP__1\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // INITIAL at Bounce_Counter_FSM.v:40
    vlTOPp->Bounce_Counter_FSM__DOT__r_CEN = 0U;
    // INITIAL at Bounce_Counter_FSM.v:42
    vlTOPp->Bounce_Counter_FSM__DOT__r_CURRENT_STATE = 0U;
    // INITIAL at Bounce_Counter_FSM.v:41
    vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE = 0U;
    // INITIAL at Bounce_Counter_FSM.v:43
    vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER = 0U;
}

VL_INLINE_OPT void VBounce_Counter_FSM::_sequent__TOP__2(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_sequent__TOP__2\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at Bounce_Counter_FSM.v:91
    vlTOPp->Bounce_Counter_FSM__DOT__r_CEN = ((~ (IData)(vlTOPp->i_RST)) 
					      & ((0U 
						  != (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE)) 
						 & (1U 
						    == (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE))));
    // ALWAYS at Bounce_Counter_FSM.v:91
    vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER = (0x3fffU 
						  & ((IData)(vlTOPp->i_RST)
						      ? 0U
						      : 
						     ((0U 
						       == (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE))
						       ? 0U
						       : 
						      ((1U 
							== (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE))
						        ? 
						       ((IData)(1U) 
							+ (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER))
						        : (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER)))));
    // ALWAYS at Bounce_Counter_FSM.v:82
    vlTOPp->Bounce_Counter_FSM__DOT__r_CURRENT_STATE 
	= ((IData)(vlTOPp->i_RST) ? 0U : (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE));
    vlTOPp->o_CEN = vlTOPp->Bounce_Counter_FSM__DOT__r_CEN;
    vlTOPp->o_DATA = vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER;
}

void VBounce_Counter_FSM::_settle__TOP__3(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_settle__TOP__3\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->o_CEN = vlTOPp->Bounce_Counter_FSM__DOT__r_CEN;
    // ALWAYS at Bounce_Counter_FSM.v:51
    vlTOPp->__Vtableidx1 = (((IData)(vlTOPp->i_Signal) 
			     << 2U) | (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_CURRENT_STATE));
    vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE = 
	vlTOPp->__Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE
	[vlTOPp->__Vtableidx1];
    vlTOPp->o_DATA = vlTOPp->Bounce_Counter_FSM__DOT__r_COUNTER;
}

VL_INLINE_OPT void VBounce_Counter_FSM::_combo__TOP__4(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_combo__TOP__4\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at Bounce_Counter_FSM.v:51
    vlTOPp->__Vtableidx1 = (((IData)(vlTOPp->i_Signal) 
			     << 2U) | (IData)(vlTOPp->Bounce_Counter_FSM__DOT__r_CURRENT_STATE));
    vlTOPp->Bounce_Counter_FSM__DOT__r_NEXT_STATE = 
	vlTOPp->__Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE
	[vlTOPp->__Vtableidx1];
}

void VBounce_Counter_FSM::_eval(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_eval\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if ((((IData)(vlTOPp->i_100MHZCLK) & (~ (IData)(vlTOPp->__Vclklast__TOP__i_100MHZCLK))) 
	 | ((IData)(vlTOPp->i_RST) & (~ (IData)(vlTOPp->__Vclklast__TOP__i_RST))))) {
	vlTOPp->_sequent__TOP__2(vlSymsp);
	vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    vlTOPp->_combo__TOP__4(vlSymsp);
    vlTOPp->__Vm_traceActivity = (4U | vlTOPp->__Vm_traceActivity);
    // Final
    vlTOPp->__Vclklast__TOP__i_100MHZCLK = vlTOPp->i_100MHZCLK;
    vlTOPp->__Vclklast__TOP__i_RST = vlTOPp->i_RST;
}

void VBounce_Counter_FSM::_eval_initial(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_eval_initial\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
    vlTOPp->__Vclklast__TOP__i_100MHZCLK = vlTOPp->i_100MHZCLK;
    vlTOPp->__Vclklast__TOP__i_RST = vlTOPp->i_RST;
}

void VBounce_Counter_FSM::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::final\n"); );
    // Variables
    VBounce_Counter_FSM__Syms* __restrict vlSymsp = this->__VlSymsp;
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VBounce_Counter_FSM::_eval_settle(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_eval_settle\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VBounce_Counter_FSM::_change_request(VBounce_Counter_FSM__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_change_request\n"); );
    VBounce_Counter_FSM* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VBounce_Counter_FSM::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((i_100MHZCLK & 0xfeU))) {
	Verilated::overWidthError("i_100MHZCLK");}
    if (VL_UNLIKELY((i_RST & 0xfeU))) {
	Verilated::overWidthError("i_RST");}
    if (VL_UNLIKELY((i_Signal & 0xfeU))) {
	Verilated::overWidthError("i_Signal");}
}
#endif // VL_DEBUG

void VBounce_Counter_FSM::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VBounce_Counter_FSM::_ctor_var_reset\n"); );
    // Body
    i_100MHZCLK = VL_RAND_RESET_I(1);
    i_RST = VL_RAND_RESET_I(1);
    i_Signal = VL_RAND_RESET_I(1);
    o_DATA = VL_RAND_RESET_I(14);
    o_CEN = VL_RAND_RESET_I(1);
    Bounce_Counter_FSM__DOT__r_CEN = VL_RAND_RESET_I(1);
    Bounce_Counter_FSM__DOT__r_NEXT_STATE = VL_RAND_RESET_I(2);
    Bounce_Counter_FSM__DOT__r_CURRENT_STATE = VL_RAND_RESET_I(2);
    Bounce_Counter_FSM__DOT__r_COUNTER = VL_RAND_RESET_I(14);
    __Vtableidx1 = VL_RAND_RESET_I(3);
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[0] = 0U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[1] = 3U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[2] = 0U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[3] = 3U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[4] = 1U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[5] = 1U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[6] = 0U;
    __Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[7] = 3U;
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
