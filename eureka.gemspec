# -*- encoding: utf-8 -*-

require "lib/eureka"

Gem::Specification.new do |s|
  s.name = %q{eureka}
  s.version = Eureka::Version.combined
  s.platform = 'jruby'
  s.authors = ["Bjørn Arild Mæland"]
  s.summary = %q{Use Weka from JRuby}
  s.description = %q{A JRuby wrapper for the Weka data mining software}
  s.email = %q{bjorn.maeland@gmail.com}
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- spec`.split("\n")
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bmaland/Eureka/}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Hostconnect", "--main", "README.markdown"]
  s.require_path = "lib"
  s.rubyforge_project = %q{eureka}
  s.required_rubygems_version = ">= 1.3.6"
  s.license = "MIT"

  s.add_dependency "bundler"
  s.add_development_dependency "rspec", "~> 2.1.0"
end
