# frozen_string_literal: true

# bundle exec
require 'rubygems'
require 'bundler'
require 'rake'
require 'rake/testtask'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

# mini_test
task :default => [:test]
Rake::TestTask.new do |mini_test|
  mini_test.test_files = Dir['mini_test/**/mini_test_*.rb']
  mini_test.verbose = true
end