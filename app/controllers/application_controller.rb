require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'password_security'
  end

  get "/" do #welcome page
    erb :welcome
  end


  not_found do
    status 404
    erb :"/oops"
  end

  helpers do
    
    def redirect_if_not_logged_in #if a user is not logged in, they will be redirected to login page to login and access website
      if !logged_in?
        redirect to "/login" #refactoring code to use less repeition in controllers
      end
    end

    def logged_in?
      !!current_user
    end

    def current_user #help with keeping code dry
     User.find_by(id: session[:user_id])
    end

    def kill_user_and_user_cats
      @cats = Cat.where(user_id: session[:user_id])
      @cats.each {|cat| cat.destroy }
      @user = User.find_by(id: session[:user_id])
      @user.destroy
      session.clear
    end

    def age_valid?
      params[:age] !~ /\D/
    end
    
    def age_edit_valid?
      params["cat"]["age"] !~ /\D/
    end


  end

end
