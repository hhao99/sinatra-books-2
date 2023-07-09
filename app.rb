require 'sinatra'
require 'sinatra/activerecord'

set :environment, 'development'
set :database, { adapter: 'sqlite3', database: "sqlite3:db/development.sqlite3"}

get '/' do
    erb :index
end