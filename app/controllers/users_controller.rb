class UsersController < ApplicationController

    #users can sign up 
    get '/signup' do #not restful however makes more sense for a user to see
      erb :'users/signup'
    end
    
    post '/signup' do
      #users should not be able to create an account without username or password
      #users should not be able to create an account with the same username that already exists
      if User.find_by(username: params[:username])
        @error = "Username is already taken. Please try different username."
        erb :'users/signup'
      else
        user = User.new(params)
        if user.save
          session[:user_id] = user.id #this line basically logs a user into website by matching the session[user_id] value to the user.id value and establish the session/cookie between server and user
          redirect "/cats"
        else
          @error= "Username or password invalid. Please try again."
          #basic message for now until we figure out messages with validations
          erb :'users/signup'
        end
      end
    end



    #users can delete account

end