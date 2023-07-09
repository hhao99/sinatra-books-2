require 'sinatra/base'
require 'sinatra/json'

require 'sinatra/reloader'

require 'active_record'
require 'yaml'
require 'json'

class BookApplication < Sinatra::Base
    
    configure :development do
        register Sinatra::Reloader
    end

    env = ENV['ENV'] || 'development'
    root = File.expand_path('..', __FILE__)
    config = YAML.load_file("#{root}/config/#{env}.yml")

    Dir.glob("#{root}/app/**/*.rb").each do |file|
        require file
    end

    Dir.glob("#{root}/model/**/*.rb").each do |file|
        require file
    end

    map '/' do
        run App
    end


end