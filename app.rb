require './environment'
require_relative './app/models/pirate'
require_relative './app/models/ship'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :"pirates/new"
    end
    post '/pirates' do
      @pirate = Pirate.new(params)
      Ship.new(params["pirate"]["ships"][0])
      Ship.new(params["pirate"]["ships"][1])
      erb :"pirates/show"
      # raise params.inspect

    end
  end
end
