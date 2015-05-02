require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
	@artist = RSpotify::Artist.search(params[:artist]).first
	erb :index
  end 
	
end