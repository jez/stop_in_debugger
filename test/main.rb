require 'stop_in_debugger'

def hello
  puts 'Hello, world!'
end

# Execution will halt here if a debugger is attached, or
# the program will exit if a debugger is not attached.
StopInDebugger.stop_in_debugger

hello
