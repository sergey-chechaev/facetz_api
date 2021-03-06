# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facetz_api/version'

Gem::Specification.new do |spec|
  spec.name          = "facetz_api"
  spec.version       = FacetzApi::VERSION
  spec.authors       = ["Sergey Chechaev"]
  spec.email         = ["kompotdrinker@gmail.com"]

  spec.summary       = %q{Ruby gem for facetz.net API}
  spec.description   = %q{Ruby gem for facetz.net API}
  spec.homepage      = "https://github.com/sergey-chechaev/facetz_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '~> 2.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'pry-rails'

	spec.add_runtime_dependency 'faraday', '>= 0.9.2'
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.9.1'
  spec.add_runtime_dependency 'faraday_middleware-multi_json', '~> 0.0.6'
  spec.add_runtime_dependency 'multi_json', '>= 1.3'
end
