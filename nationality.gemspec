lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nationality/version'

Gem::Specification.new do |gem|
  gem.name          = 'nationality'
  gem.version       = Nationality::VERSION
  gem.authors       = ['Jose Marie Antonio Miñoza']
  gem.email         = ['josemarieantoniominoza@gmail.com']
  gem.description   = 'Provides listing of nationality that you may need in your ruby applications.'
  gem.summary       = 'List of Nationality'
  gem.homepage      = 'https://github.com/JomaMinoza/nationality/'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9.2'

  gem.add_development_dependency 'pry', '~> 0.11.3'
  gem.add_development_dependency 'pry-byebug', '~> 3.6.0'
  gem.add_development_dependency 'pry-doc', '~> 0.13.4'
  gem.add_development_dependency 'rake', '~> 12.3.1'
  gem.add_development_dependency 'rspec', '~> 3.8.0'
end
