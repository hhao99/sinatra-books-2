require 'sinatra'
require 'sinatra/activerecord'

set :environment, 'development'
set :database, { adapter: 'sqlite3', database: "db/bookstore.sqlite3"}

get '/' do
    erb :index
end