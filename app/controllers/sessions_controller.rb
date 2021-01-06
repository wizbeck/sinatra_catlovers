class SessionsController < ApplicationController
#user log in

get "/login" do
  erb :"users/login"
end

post "/login" do
  if params["username"].empty? || params["password"].empty?
    @error = "Username or password can't be blank. Please try again."
    erb :"users/login"
  else
    if user = User.find_by(username: params["username"], password: params["password"])
      session[:user_id] = user.id
      redirect "/cats"
    else
      @error = "Account not found. Try again."
      erb :"/users/login"
    end
  end
  
end
#user log out
 # - we want the user to successfully log out,
 #we can clear sessions hash
 #then redirect them to the welcome page to log in

get "/logout" do
  sessions.clear
  binding.pry
  redirect "/"
end