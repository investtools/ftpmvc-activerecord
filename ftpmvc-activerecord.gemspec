# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ftpmvc/activerecord/version'

Gem::Specification.new do |spec|
  spec.name          = "ftpmvc-activerecord"
  spec.version       = Ftpmvc::Activerecord::VERSION
  spec.authors       = ["André Aizim Kelmanson"]
  spec.email         = ["akelmanson@gmail.com"]
  spec.summary       = %q{FTPMVC ActiveRecord Connection Pool Filter}
  spec.description   = %q{FTPMVC ActiveRecord Connection Pool Filter}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "activerecord"
  spec.add_dependency "ftpmvc", '>= 0.7.0'
end
