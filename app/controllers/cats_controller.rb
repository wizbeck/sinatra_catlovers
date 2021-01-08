class CatsController < ApplicationController

    

    #show - read all
    get "/cats" do
        redirect_if_not_logged_in
        @cats = Cat.all.reverse
        erb :'cats/index'
    end

    #new - get request to new erb form for user to fill out and submit
    get "/cats/new" do
        redirect_if_not_logged_in
        erb :"cats/new"
    end

    #read only cats that were created by the current logged in user
    get '/cats/users/:id' do
        redirect_if_not_logged_in
        @users_cats = current_user.cats
        erb :'/cats/userscats'
    end

    #read single object- show
    get "/cats/:id" do
        redirect_if_not_logged_in
        @cat = Cat.find_by(id: params[:id])
        if @cat
            erb :"cats/show"
        else 
            redirect "/cats"
        end
    end

    #create
    #persist new cat to database, and redirect to individual show page with validations
    post "/cats" do
        @cat = current_user.cats.build(params)
            if @cat.save
            #take user to all cats show page to see their post as the most recent at top
            redirect  "/cats"
        else 
            @error = "Cat must have at least a name and age. Please try again."
            erb :"cats/new"
            #rerender the form
        end
    end
        

#UPDATE
    #edit -render erb form with current values of object
    #here i want a page to display with the cats attributes in a text box input 
    #with the values already filled out for them to change

    get "/cats/:id/edit" do
        redirect_if_not_logged_in
        @cat = Cat.find(params[:id])
        erb :"cats/edit"
    end

    #update
    #put or patch- post request to change values of existing object in database
    patch "/cats/:id" do
        @cat = Cat.find(params[:id])
        if !params["cat"]["name"].blank? && !params["cat"]["age"].blank? #using cat key pointing to hash of param values for easier integration with users
            @cat.update(params["cat"])
            redirect "/cats/#{@cat.id}"
        else
            @error = "Cat must have a name and age. Please try again."
            erb :"/cats/edit"
        end
        
    end

#DELETE/destroy- create a delete button, as a form disguised in a show page or read page
#   create a delete HTTP request to delete from database
    delete "/cats/:id" do
        @cat = Cat.find(params[:id])
        @cat.destroy
        redirect "/cats"
    end
    
end