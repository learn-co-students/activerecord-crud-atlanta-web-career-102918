require 'bundler/setup'
require 'pry'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
ActiveRecord::Base.logger = nil
require_all 'app'
