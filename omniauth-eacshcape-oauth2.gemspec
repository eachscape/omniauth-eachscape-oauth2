# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-eachscape-oauth2/version'

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-eachscape-oauth2'
  gem.version       = OmniAuth::EachScape::VERSION
  gem.authors       = ['Jon Botelho'],
  gem.email         = ['jon@eachscape.com']
  gem.description   = %q{An EachScape OAuth2 strategy for OmniAuth.}
  gem.summary       = %q{An EachScape OAuth2 strategy for OmniAuth.}
  gem.homepage      = 'https://github.com/decioferreira/omniauth-linkedin-oauth2'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'omniauth', '~> 1.0'
  gem.add_runtime_dependency 'omniauth-oauth2'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
end
