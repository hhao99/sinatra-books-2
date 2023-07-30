require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'active_record'


class BookApplication < Sinatra::Base
    
    configure :development do
        register Sinatra::Reloader
    end

    get '/' do
        @books = Book.all
        slim :index
    end

end

