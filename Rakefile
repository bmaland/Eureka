# -*- coding: utf-8 -*-
require 'rubygems'
require 'rake'
require 'rake/rdoctask'
require 'rspec/core/rake_task'
require 'lib/eureka'

RSpec::Core::RakeTask.new(:spec) do |t|
end

task :default => :spec

desc "Generate Documentation"
Rake::RDocTask.new do |rdoc|
  version = Eureka::Version.combined
  rdoc.rdoc_dir = 'doc'
  rdoc.title = "Eureka #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
