# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'medium-editor-rails/version'

Gem::Specification.new do |s|
  s.name          = 'medium-editor-rails'
  s.version       = MediumEditorRails::Rails::VERSION
  s.authors       = ['Ahmet Sezgin Duran']
  s.email         = ['marjinalist1@gmail.com']
  s.summary       = %q{Medium Editor integrated in Rails asset pipeline}
  s.description   = s.summary
  s.homepage      = 'https://github.com/marjinal1st/medium-editor-rails'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'rails', '~> 3.1'
end
