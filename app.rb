require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do 
        new_word = params[:user_phrase]
        pg1 = PigLatinizer.new  
        @output = pg1.piglatinize(new_word)
        erb :show
    end

   

















end