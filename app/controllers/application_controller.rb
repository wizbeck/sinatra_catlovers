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
    
    def redirect_if_not_logged_in #if a user is not logged in, they will be redirected to login page to login and access website
      if !logged_in?
        redirect to "/login" #helper method to refactor repetitive code. protect user data?
      end
    end

    def logged_in?
      !!current_user
    end

    def current_user #help with keeping code dry
     User.find_by(id: session[:user_id])
    end

  end

end
