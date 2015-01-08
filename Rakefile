require 'bundler'
require File.join(__dir__, "test", "test_helper")
Bundler.require

task :test do
  Dir.glob('./test/**/*_test.rb') { |file| require file }
end
