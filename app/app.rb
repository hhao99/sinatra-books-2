require 'sinatra'
require 'sinatra/activerecord'

class BookApplication < Sinatra::Base
    get '/' do
        @user = User.fina_all
        puts 'get all user #{@user}'
        erb :index
    end
end

