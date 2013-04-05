require 'sinatra'
require 'data_mapper'
require 'pry'

require './posts_controller'
require './sms_controller'

require './post'



RACK_ENV ||= "development"

case RACK_ENV
when "production"
when "development"
   DataMapper::Logger.new($stdout, :debug)
   DataMapper.setup(:default, 'postgres://postgres@localhost/development_elk')
   DataMapper.finalize
end