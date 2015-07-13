require 'middleman-gh-pages'
require 'rake/clean'

CLOBBER.include('build')

task :default => [:build]

desc "Run a virtual environment"
task :server do
  sh "bundle exec middleman server"
end
