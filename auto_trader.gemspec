# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_trader/version'

Gem::Specification.new do |spec|
  spec.name          = "auto_trader"
  spec.version       = AutoTrader::VERSION
  spec.authors       = ["pantos06"]
  spec.email         = ["pernes06@yahoo.fr"]
  spec.summary       = %q{aces to AutoTrader API}
  spec.description   = %q{aces to AutoTrader API for car}
  spec.homepage      = "https://github.com/Pantos06/auto_trader"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "httparty"

end
