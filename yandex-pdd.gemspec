lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex/pdd/version'

Gem::Specification.new do |spec|
  spec.name          = 'yandex-pdd-2'
  spec.version       = Yandex::Pdd::VERSION
  spec.authors       = ['Dmitry Makeev']
  spec.email         = ['dmakeev@gmail.com']

  spec.summary       = 'Yandex PDD API version 2 client'
  spec.description   = 'Yandex Mail for Domain API version 2 client'
  spec.homepage      = 'https://github.com/dskyyy/yandex-pdd'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 0.46.0'

  spec.add_dependency 'httparty', '~> 0.14.0'
end
