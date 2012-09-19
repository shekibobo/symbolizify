# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'symbolizify/version'

Gem::Specification.new do |gem|
  gem.name          = "symbolizify"
  gem.version       = Symbolizify::VERSION
  gem.authors       = ["Joshua Kovach"]
  gem.email         = ["kovach.jc@gmail.com"]
  gem.description   = %q{Converts any string into a symbol-style symbol.}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = "https://www.github.com/shekibobo/symbolizify"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
