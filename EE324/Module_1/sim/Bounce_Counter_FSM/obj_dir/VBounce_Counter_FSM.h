// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VBounce_Counter_FSM_H_
#define _VBounce_Counter_FSM_H_

#include "verilated.h"

class VBounce_Counter_FSM__Syms;
class VerilatedVcd;

//----------

VL_MODULE(VBounce_Counter_FSM) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    // Begin mtask footprint  all: 
    VL_IN8(i_100MHZCLK,0,0);
    VL_IN8(i_RST,0,0);
    VL_IN8(i_Signal,0,0);
    VL_OUT8(o_CEN,0,0);
    VL_OUT16(o_DATA,13,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Begin mtask footprint  all: 
    VL_SIG8(Bounce_Counter_FSM__DOT__r_CEN,0,0);
    VL_SIG8(Bounce_Counter_FSM__DOT__r_NEXT_STATE,1,0);
    VL_SIG8(Bounce_Counter_FSM__DOT__r_CURRENT_STATE,1,0);
    VL_SIG16(Bounce_Counter_FSM__DOT__r_COUNTER,13,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    // Begin mtask footprint  all: 
    VL_SIG8(__Vtableidx1,2,0);
    VL_SIG8(__Vclklast__TOP__i_100MHZCLK,0,0);
    VL_SIG8(__Vclklast__TOP__i_RST,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    static VL_ST_SIG8(__Vtable1_Bounce_Counter_FSM__DOT__r_NEXT_STATE[8],1,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VBounce_Counter_FSM__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VBounce_Counter_FSM);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VBounce_Counter_FSM(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VBounce_Counter_FSM();
    /// Trace signals in the model; called by application code
    void trace(VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VBounce_Counter_FSM__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VBounce_Counter_FSM__Syms* symsp, bool first);
  private:
    static QData _change_request(VBounce_Counter_FSM__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__4(VBounce_Counter_FSM__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VBounce_Counter_FSM__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(VBounce_Counter_FSM__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VBounce_Counter_FSM__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VBounce_Counter_FSM__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__2(VBounce_Counter_FSM__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(VBounce_Counter_FSM__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void traceChgThis(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceFullThis__1(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInitThis__1(VBounce_Counter_FSM__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) VL_ATTR_COLD;
    static void traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
