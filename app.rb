require 'sinatra'
require 'sinatra/activerecord'


class BookApplication < Sinatra::Base
    register Sinatra::ActiveRecordExtension

    get '/' do
        erb :index
    end

end
