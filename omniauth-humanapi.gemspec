# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-humanapi/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-humanapi"
  spec.version       = OmniAuth::HumanAPI::VERSION
  spec.authors       = ["Alex MacCaw"]
  spec.email         = ["maccman@gmail.com"]
  spec.description   = %q{OmniAuth strategy for HumanAPI.}
  spec.summary       = %q{OmniAuth strategy for HumanAPI.}
  spec.homepage      = "https://github.com/maccman/omniauth-humanapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "omniauth-oauth", "~> 1.0"
  spec.add_dependency 'omniauth-oauth2', '~> 1.1'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
