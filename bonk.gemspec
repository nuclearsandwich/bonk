# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bonk/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steven! Ragnarök"]
  gem.email         = ["steven@nuclearsandwich.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `hg locate bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `hg locate`.split("\n")
  gem.test_files    = `hg locate {test,spec,features}/*`.split("\n")
  gem.name          = "bonk"
  gem.require_paths = ["lib"]
  gem.version       = Bonk::VERSION
end
