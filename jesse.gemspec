# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jesse/version'

Gem::Specification.new do |spec|
  spec.name          = "jesse"
  spec.version       = Jesse::VERSION
  spec.authors       = ["Tsuyoshi Okumura"]
  spec.email         = ["qkrhn081@gmail.com"]
  spec.summary       = %q{ORCA-API Client.}
  spec.description   = %q{Jesse helps to call ORCA-API and CLAIM requests.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "rest-client"
end
