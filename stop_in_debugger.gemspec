Gem::Specification.new do |spec|
  spec.name          = "stop_in_debugger"
  spec.version       = "0.1.0"
  spec.authors       = ["Jake Zimmerman"]
  spec.email         = ["zimmerman.jake@gmail.com"]

  spec.summary       = "Stop in a C debugger when a Ruby method is called"
  spec.homepage      = "https://github.com/jez/stop_in_debugger.gem"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/jez/stop_in_debugger.gem"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/stop_in_debugger/extconf.rb"]
end