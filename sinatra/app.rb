require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

  get '/random-cat' do
    @random_name = ["Amigo", "Oscar", "Viking"].sample
    erb(:index)
  end

  get '/named-cat' do
    @random_name = params[:name]
    erb(:index)
  end
#  params is a hash that Sinatra makes available for you in your route blocks, and it will automatically include
   # relevant data from the request, i.e. if you do this request http://localhost:9393/named-cat?name=Bob on your
   # browser, it will set the params[:name] where :name is from the ?name, to whatever you give it, in this case Bob.
   # So the params ?name=Bob acts like a key/value pair of a hash.

get '/secret' do
  'This is a secret page'
end


# <img src='https://www.placecage.com/c/300/300' style='border: dashed blue;'>
