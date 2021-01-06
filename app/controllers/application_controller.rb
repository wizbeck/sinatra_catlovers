require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'crazycatlovers'
  end

  get "/" do #welcome page
    erb :welcome
  end


  
  helpers do
    
    def redirect_if_not_logged_in
      if !logged_in?
        redirect to #error login page
      end
    end

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end


  end

end
