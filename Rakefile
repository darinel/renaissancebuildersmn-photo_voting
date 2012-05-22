#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

RenaissancebuildersmnPhotoVoting::Application.load_tasks


#
# added to provice RDocs for the Rails application.
#
RDoc::Task.new :rdoc do |rdoc|
  rdoc.main             = "README.rdoc"
  rdoc.title            = "Documentation"
  rdoc.rdoc_dir 				= "doc"
  rdoc.options  				<< "--all" 
  rdoc.rdoc_files.include("README.rdoc", "doc/*.rdoc", "app/**/*.rb", "lib/*.rb", "config/**/*.rb")
end


#
# Test methods
#


# default => test