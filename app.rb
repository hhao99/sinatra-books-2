require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'active_record'


class BookApplication < Sinatra::Base
  

    get '/' do
        erb :index
    end

end

