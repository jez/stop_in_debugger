require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("stop_in_debugger") do |ext|
  ext.lib_dir = "lib/stop_in_debugger"
end

task :default => [:clobber, :compile]

task :compile_commands do
  # Requires https://github.com/rizsotto/Bear
  system "bear bundle exec rake"
end
