class UsersController < ApplicationController

    #users can sign up 
    get '/signup' do #not restful however makes more sense for a user to see
      erb :'users/signup'
    end
    
    post '/signup' do
      #users should not be able to create an account without username or password
      #users should not be able to create an account with the same username that already exists
        user = User.new(params)
        if user.username.empty? || user.password.empty?
          @error = "Username or password can't be blank. Please try again."
          erb :"users/signup"
        elsif User.find_by(username: user.username) #no two usernames can be the same
          @error = "Username is already taken. Please use a different username"
          erb :"users/signup"
        else
          user.save
          session[:user_id] = user.id #this line basically logs a user into website by matching the session[user_id] value to the user.id value and establish the session/cookie between server and user
          redirect "/cats"
        end
    end



    #users can delete account

end