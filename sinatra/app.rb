require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

  get '/cat' do
    @random_name = ["Amigo", "Oscar", "Viking"].sample 
    erb(:index)
  end



get '/secret' do
  'This is a secret page'
end


# <img src='https://www.placecage.com/c/300/300' style='border: dashed blue;'>
