require 'sinatra'
require 'active_record'
require 'sinatra/activerecord'
require 'require_all'

require_all './models'

require './app'
run BookApplication