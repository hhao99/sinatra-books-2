require 'sinatra/base'
require 'sinatra/json'

require 'sinatra/reloader'

require 'active_record'
require 'yaml'
require 'json'

class BaseApplication < Sinatra::Base
    
    configure :development do
        register Sinatra::Reloader
    end

    env = ENV['ENV'] || 'development'
    root = File.expand_path("../..", __FILE__)
    config = YAML.load_file("./config/#{env}.yml")

    ActiveRecord::Base.configurations = config
    ActiveRecord::Base.establish_connection env.to_sym
end

    Dir.glob("./app/**/*.rb").each do |file|
        require file
    end

    Dir.glob("./model/**/*.rb").each do |file|
        require file
    end

    map '/' do
        run BookApplication
    end

