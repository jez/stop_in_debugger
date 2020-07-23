#include "ruby.h"

// This only works on x86
__attribute__((noinline))
static VALUE stop_in_debugger(VALUE self) {
  __asm__("int $3");
  return Qnil;
}

void Init_stop_in_debugger() {
  VALUE cStopInDebugger;
  cStopInDebugger = rb_define_class("StopInDebugger", rb_cObject);
  rb_define_method(cStopInDebugger, "stop_in_debugger", stop_in_debugger, 0);
}
