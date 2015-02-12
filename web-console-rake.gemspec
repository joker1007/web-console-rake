# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'web_console/rake/version'

Gem::Specification.new do |spec|
  spec.name          = "web-console-rake"
  spec.version       = WebConsole::Rake::VERSION
  spec.authors       = ["joker1007"]
  spec.email         = ["kakyoin.hierophant@gmail.com"]

  spec.summary       = %q{Invoke Rake task on web-console}
  spec.description   = %q{Invoke Rake task on web-console}
  spec.homepage      = "https://github.com/joker1007/web-console-rake"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "web-console"
  spec.add_runtime_dependency "railties"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
