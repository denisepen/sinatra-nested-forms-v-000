require_relative './environment.rb'
# require_relative 'views/pirates/new.erb'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
     erb  :new
  end

  post '/pirates' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |details|
      ship = Ship.new(details)
      # binding.pry
    end

    @ships = Ship.all
    erb :show
  end


  end
end
