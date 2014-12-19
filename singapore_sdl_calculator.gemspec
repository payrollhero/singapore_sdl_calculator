# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'singapore_sdl_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "singapore_sdl_calculator"
  spec.version       = SingaporeSDLCalculator::VERSION
  spec.authors       = ["Vincent Paca", "Ronald Maravilla"]
  spec.email         = ["vpaca@payrollhero.com", "rmaravilla@payrollhero.com"]
  spec.summary       = "Calculator for Singapore Skill Development Levy"
  spec.description   = "Calculates for the employer contributions for the Skill Development Levy Act contribution per employee."
  spec.homepage      = "https://github.com/payrollhero/singapore_sdl_calculator"
  spec.license       = "BSD-3-Clause"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "codeclimate-test-reporter"
end
