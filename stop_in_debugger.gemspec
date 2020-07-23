Gem::Specification.new do |spec|
  spec.name          = "stop_in_debugger"
  spec.version       = "0.1.0"
  spec.authors       = ["Jake Zimmerman"]
  spec.email         = ["zimmerman.jake@gmail.com"]

  spec.summary       = "Stop in a C debugger when a Ruby method is called"
  spec.homepage      = "https://github.com/jez/stop_in_debugger"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/jez/stop_in_debugger"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = `git --git-dir #{File.expand_path('../.git', __FILE__)} ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/stop_in_debugger/extconf.rb"]

  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rake-compiler'
end
