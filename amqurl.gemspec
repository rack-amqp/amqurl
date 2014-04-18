# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/amqp/curl/version'

Gem::Specification.new do |spec|
  spec.name          = "amqurl"
  spec.version       = Rack::AMQP::Curl::VERSION
  spec.authors       = ["Joshua Szmajda"]
  spec.email         = ["josh@optoro.com"]
  spec.description   = %q{AMQP-HTTP compliant curl clone}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/rack-amqp/amqurl"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack-amqp-client"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "emoji-rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "pry"
end
