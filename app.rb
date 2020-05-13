require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/words" do 
        new_word = params[:word]
        
    end












end