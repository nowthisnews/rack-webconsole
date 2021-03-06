# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack/webconsole/version"

Gem::Specification.new do |s|
  s.name        = "rack-webconsole"
  s.version     = Rack::Webconsole::VERSION
  s.authors     = ["Josep M. Bach", "Josep Jaume Rey", "Oriol Gual"]
  s.email       = ["info@codegram.com"]
  s.homepage    = "http://github.com/codegram/rack-webconsole"
  s.summary     = %q{Rack-based console inside your web applications}
  s.description = %q{Rack-based console inside your web applications}

  s.rubyforge_project = "rack-webconsole"
  
  fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless s.respond_to?(:metadata)
  s.metadata['allowed_push_host'] = 'http://gemstash.service.consul:8080/private'

  s.add_runtime_dependency 'rack'
  s.add_runtime_dependency 'ripl', '~> 0.5.1'
  s.add_runtime_dependency 'ripl-multi_line', '~> 0.3.0'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'purdytest'

  # Since we can't have a git dependency in gemspec, we specify this
  # dependency directly in the Gemfile. Once a new mocha version is released,
  # we should uncomment this line and remove mocha from the Gemfile.
  # s.add_development_dependency 'mocha'

  s.add_development_dependency 'yard'
  s.add_development_dependency 'bluecloth'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'mocha'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end
