require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/'

get '/' do
    erb :game
end
