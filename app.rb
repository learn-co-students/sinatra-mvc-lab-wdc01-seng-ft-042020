require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do

        erb :user_input
    end

    post '/piglatinize' do
    piglatin = PigLatinizer.new
    @pig = piglatin.piglatinize(params[:user_phrase])
        erb :show
    end


end