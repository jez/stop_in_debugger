#include "ruby.h"

// This only works on x86
__attribute__((noinline))
static VALUE stop_in_debugger(VALUE self) {
  __asm__("int $3");
  return Qnil;
} // 👋 Type 'finish' to return from this function, or add breakpoints and type 'continue'.

void Init_stop_in_debugger() {
  VALUE cStopInDebugger;
  cStopInDebugger = rb_define_module("StopInDebugger");
  rb_define_singleton_method(cStopInDebugger, "stop_in_debugger", stop_in_debugger, 0);
}
