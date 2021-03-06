# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'symbolizify/version'

Gem::Specification.new do |gem|
  gem.name          = "symbolizify"
  gem.version       = Symbolizify::VERSION
  gem.authors       = ["Joshua Kovach"]
  gem.email         = ["kovach.jc@gmail.com"]
  gem.description   = %q{Converts any string into a symbol-style string.}
  gem.summary       = %q{Adds a method `#symbolizify` on ActiveSupport::Inflector and String which converts a string into a symbol-style string.}
  gem.homepage      = "https://www.github.com/shekibobo/symbolizify"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "activesupport", ">= 3.0.0"
  gem.add_development_dependency 'rspec', '~> 2.5'

end
