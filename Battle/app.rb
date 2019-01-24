require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  set :session_secret, 'secret AF'
  enable :sessions
  get '/' do
    erb :index
  end

  get '/names' do
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  redirect '/play'
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end






  #.erb files have to be in view so they can be read just like Rspec.
  # naming convention on Index that doesnt associate root (/) but has elements like /name that call on a route
