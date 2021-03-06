# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'script-ci-lib/version'

Gem::Specification.new do |gem|
  gem.name          = "script-ci-lib"
  gem.version       = ScriptCiLib::VERSION
  gem.authors       = ["Istvan Hoka"]
  gem.email         = ["istvan@2xwide.com"]
  gem.description   = %q{CI library scripts}
  gem.summary       = %q{Bootstrap your Rails project with CI scripts to run on Jenkins}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency('rdoc')
  gem.add_development_dependency('aruba')
  gem.add_development_dependency('rake', '~> 10.1.0')
  gem.add_dependency('methadone', '~> 1.2.2')
end
