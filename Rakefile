# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake/testtask'

Rake::TestTask.new('test_all') do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/*.rb']
  t.verbose = true
end

Rails.application.load_tasks
