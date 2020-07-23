# StopInDebugger

Stop in a C debugger (like GDB or LLDB) when a Ruby method is called.

Useful to debug the Ruby VM itself and learn how it works, as the Ruby VM is
implemented in C.

```ruby
# -- test/main.rb --
require 'stop_in_debugger'

def hello
  puts 'Hello, world!'
end

# Execution will halt here if a debugger is attached, or
# the program will exit if a debugger is not attached.
StopInDebugger.stop_in_debugger

hello
```

A sample debugger session:

```
❯ lldb -- ruby test/main.rb
TODO(jez)
```

From there, you can add whatever breakpoints you want. This works best when
you've built Ruby with debug symbols and no optimizations.

## Installation

This gem is on RubyGems.org, so you can make your Gemfile look like this:

```ruby
# -- Gemfile --
source 'https://rubygems.org'
gem 'stop_in_debugger'
```

and then install with:

```
bundle install
```
