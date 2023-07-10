# Sinatra bookstore app

# development enviornment prepare

we use nix to prepare the develpment environment

```bash
curl -L https://nixos.org/nix/install | sh -
```

the ruby development depencies was defined inthe default.nix, and some bash hooks to install the bundler and add gems we need for the sinatra development

```bash
nix-shell .
```

# First sinatra hello

# what's Sinatra

From the [sinatra office site](http://sinatrarb.com), Sinatra is a DSL web framework.
ROR is the full stack framework, but Sinatra only deal with the core part of the web framework based on the MVC, only the Controller part, just like this

```ruby
require 'sinatra'

get '/' do
    "Hello World"
end
```

Simple and straightforward, it can also integrate with RoR ecosystem to develop the full stack application, like ActiveRecord, ERB views etc, and is more suitable for the API.

## Route

Here is the summaries of the Sinatra route

```ruby
get '/' do
    "Hello World" # simple return string
end

get '/' do
    erb :index # return the the view template name which was in the views directory
end

get '/user/:id' do
    @user = User.find(params['id']) # named params route
    erb :user
end

post '/users' do
    @user = User.new do [u]
        u.username = params[:username]
        u.password = params[:password]
    end
    if @user.save do
        redirect '/'
    else
        redirect '/user/new', errors = @user.errors
    end
end

```

# rake and rack

## what is rake

## what is rack

## rackup

# activerecord and sinatra
