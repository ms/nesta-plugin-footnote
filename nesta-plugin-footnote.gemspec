# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nesta-plugin-footnote/version"

Gem::Specification.new do |s|
  s.name        = "nesta-plugin-footnote"
  s.version     = Nesta::Plugin::Footnote::VERSION
  s.authors     = ["Max Sadrieh"]
  s.email       = ["max.sadrieh@gmail.com"]
  s.homepage    = "https://sadrieh.me/projects/nesta-plugin-footnote"
  s.summary     = %q{Adds the ability to insert footnotes for the Nesta CMS}
  s.description = %q{This plugin adds a few methods that allow you to easily \
add footnotes without having to keep track of the different anchors and links.}

  s.rubyforge_project = "nesta-plugin-footnote"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency("nesta", ">= 0.9.11")
  s.add_development_dependency("rake")
end
