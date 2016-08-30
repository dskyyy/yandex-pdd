lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex/pdd/version'

Gem::Specification.new do |spec|
  spec.name          = 'yandex-pdd'
  spec.version       = Yandex::Pdd::VERSION
  spec.authors       = ['Dmitry Makeev']
  spec.email         = ['dmakeev@gmail.com']

  spec.summary       = 'Yandex PDD API client'
  spec.description   = 'Yandex Mail for Domain API client'
  spec.homepage      = 'https://github.com/dskyyy/yandex-pdd'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'httparty'
end
