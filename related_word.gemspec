# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'related_word/version'

Gem::Specification.new do |spec|
  spec.name          = "related_word"
  spec.version       = RelatedWord::VERSION
  spec.authors       = ["MatBi"]
  spec.email         = ["leminhducktvn@gmail.com"]

  spec.summary       = %q{A gem for finding related words of a word}
  spec.description   = %q{A gem for finding related words of a word using semantic-link.com}
  spec.homepage      = "https://github.com/lmduc/related_word"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "json", "~> 1.6"
end
