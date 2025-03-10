# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-ldap/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ping Yu"]
  gem.email         = ["ping@intridea.com"]
  gem.description   = %q{A LDAP strategy for OmniAuth.}
  gem.summary       = %q{A LDAP strategy for OmniAuth.}
  gem.homepage      = "https://gitlab.com/gitlab-org/omniauth-ldap"
  gem.license       = "MIT"

  gem.add_runtime_dependency     'omniauth', '>= 1.3', '< 3'
  gem.add_runtime_dependency     'net-ldap', '~> 0.16'
  gem.add_runtime_dependency     'pyu-ruby-sasl', '>= 0.0.3.3', '< 0.1'
  gem.add_runtime_dependency     'rubyntlm', '~> 0.5'
  gem.add_development_dependency 'rspec', '>= 2.12'
  gem.add_development_dependency 'pry', '>= 0.9'
  gem.add_development_dependency 'rake', '>= 10.0'
  gem.add_development_dependency 'rack-test', '>= 0.6'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "gitlab_omniauth-ldap"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::LDAP::VERSION
end
