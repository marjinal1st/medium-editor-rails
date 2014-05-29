# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medium-editor-rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'medium-editor-rails'
  gem.version       = MediumEditorRails::Rails::VERSION
  gem.authors       = ['Ahmet Sezgin Duran']
  gem.email         = ['marjinalist1@gmail.com']
  gem.summary       = %q{Medium Editor integrated in Rails asset pipeline}
  gem.description   = gem.summary
  gem.homepage      = 'https://github.com/marjinal1st/medium-editor-rails'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ['lib']

  gem.add_dependency 'railties', '>= 3.0'
  gem.add_development_dependency 'bundler', '~> 1.0'
end
