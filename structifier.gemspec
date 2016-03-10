# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'structifier/version'

Gem::Specification.new do |spec|
  spec.name          = "structifier"
  spec.version       = Structifier::VERSION
  spec.authors       = ["Christopher Ostrowski"]
  spec.email         = ["chris.ostrowski@gmail.com"]

  spec.summary       = %q{OpenStruct-ify your instance methods.}
  spec.homepage      = "https://github.com/TheKidCoder/Structifier"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
