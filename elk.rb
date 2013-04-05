require 'sinatra'
require 'data_mapper'
require 'pry'

require './posts_controller'
require './sms_controller'

require './post'



ENV['RACK_ENV'] ||= "development"

case ENV['RACK_ENV']
when "production"
  DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/mydb')
when "development"
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'postgres://postgres@localhost/development_elk')
  DataMapper.finalize
end