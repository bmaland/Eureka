# -*- coding: utf-8 -*-
require "rake"
require "spec/rake/spectask"
require 'jeweler'

Jeweler::Tasks.new do |gem|
  gem.name = "eureka"
  gem.version = "0.0.1"
  gem.summary = "Use Weka from JRuby"
  gem.description = "Weka wrapper for JRuby"
  gem.email = "bjorn.maeland@gmail.com"
  gem.homepage = "http://github.com/Chrononaut/Eureka"
  gem.authors = ["Bjørn Arild Mæland"]
  gem.add_development_dependency "rspec", ">= 1.2.9"
end

Jeweler::GemcutterTasks.new

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "Eureka #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
