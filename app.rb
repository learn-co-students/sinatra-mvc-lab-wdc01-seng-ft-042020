require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post "/piglatinize" do

        @p = PigLatin.piglatinize(params[:user_phrase])
        erb :pl
    end

end
