require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "tiny_cms"
    gem.summary = %Q{Minimal CMS Rails Engine or more likelly a "static" pages manager}
    gem.description = %Q{Minimal CMS Rails Engine or more likelly a "static" pages manager.\nPages can be created, deleted, edited and arranged into sections using a file tree like interface courtesy of jQuery tree (http://jstree.com).\n\nIt attempts to be as minimal, flexible and unobtrusive as posible leaving a lot of functionality like templating languages\nand authentication/authorization for page creation, deletion and editing for the Rails app developer to implement. (It now works after premature release)}
    gem.email = "macarui@gmail.com"
    gem.homepage = "http://github.com/maca/tiny_cms"
    gem.authors = ["Macario"]
    gem.add_development_dependency "shoulda", ">= 0"
    gem.add_development_dependency "rails", ">= 2.3.5"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "tiny_cms #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
