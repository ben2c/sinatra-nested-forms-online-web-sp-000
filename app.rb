require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'pirates/new'
    end

    post '/show' do
      @pirates = Pirate.new(params[:pirate])

      params[:pirates][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
