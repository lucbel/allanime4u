require 'rake/testtask'

namespace :test_util do
  desc "execute all the tests"
  task :test_all => :environment do
    puts "executing all tests"
    Rake::TestTask.new do |t|
      t.libs << "test"
      t.test_files = FileList['test/**/*.rb']
      t.verbose = true
    end
    puts Rake::TestTask.new
  end
end
