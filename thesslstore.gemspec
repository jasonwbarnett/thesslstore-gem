# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thesslstore/version'

Gem::Specification.new do |spec|
  spec.name          = "thesslstore"
  spec.version       = Thesslstore::VERSION
  spec.authors       = ["Jason Barnett"]
  spec.email         = ["J@sonBarnett.com"]
  spec.summary       = %q{thesslstore.com api wrapper in ruby}
  spec.description   = %q{thesslstore.com is a SSL certificate vendor that has a somewhat modern API. This gem attempts to make those 
                          interactions as simple as possible.}
  spec.homepage      = "https://github.com/jasonwbarnett/thesslstore-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
