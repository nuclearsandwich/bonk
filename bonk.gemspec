# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bonk/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steven! Ragnarök"]
  gem.email         = ["steven@nuclearsandwich.com"]
  gem.description   = <<EOF
A simple RubyGem which adds the method Object#bonk. Bonk imitiates the semantics
of Enumerable#map but for solitary objects.
EOF
  gem.summary       = %q{A really hard #tap. Bonk is Enumerable#map for Object.}
  gem.homepage      = "http://code.nuclearsandwich.com/bonk/overview"

  gem.executables   = `hg locate bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `hg locate`.split("\n")
  gem.test_files    = `hg locate {test,spec,features}/*`.split("\n")
  gem.name          = "bonk"
  gem.require_paths = ["lib"]
  gem.version       = Bonk::VERSION
  gem.add_development_dependency 'minitest', '~>2.8.1'
end
