# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth/prayer_letters/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Josh Starcher"]
  gem.email         = ["josh.starcher@gmail.com"]
  gem.description   = %q{Prayer Letters strategy for omniauth}
  gem.summary       = %q{Prayer Letters strategy for omniauth}
  gem.homepage      = 'https://github.com/CruGlobal/omniauth-prayer-letters'
  gem.license = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-prayer-letters"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::PrayerLetters::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2'
  gem.add_runtime_dependency 'multi_json'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'
end
