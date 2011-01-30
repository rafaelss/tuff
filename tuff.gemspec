# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tuff/version"

Gem::Specification.new do |s|
  s.name        = "tuff"
  s.version     = Tuff::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rafael Souza"]
  s.email       = ["me@rafaelss.com"]
  s.homepage    = "http://github.com/rafaelss/tuff"
  s.summary     = %q{Fast Fail for Test Unit}
  s.description = %q{Gem that adds same fast fail functionality from rspec to test-unit}

  s.add_runtime_dependency "test-unit"
  s.add_development_dependency "minitest", "~> 2.0.2"
  s.add_development_dependency "mocha", "~> 0.9.10"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
