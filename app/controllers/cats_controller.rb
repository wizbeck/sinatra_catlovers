class CatsController < ApplicationController


    #show - read all
    get "/cats" do
        binding.pry
        @cats = Cat.all.reverse
        erb :'cats/index'
    end

    #new - get request to new erb form for user to fill out and submit
    get "/cats/new" do
        erb :"cats/new"
    end

    
    #read single object- show
    get "/cats/:id" do
        @cat = Cat.find(params[:id])
        erb :"cats/show"
    end

    #create
    #persist new cat to database, and redirect to individual show page with validations
    post "/cats" do
        @cat = Cat.new(params)
        if !@cat.name.blank? && !@cat.age.blank? && !@cat.personality.blank? #use blank? for if someone uses whitespace, and for integers such as age
            @cat.save
            #take user to cat show page
            redirect  "/cats"
        else 
            @error = "Data Invalid, Please try again."
            erb :"cats/new"
            #rerender the form
        end
    end
        

#UPDATE
    #edit -render erb form with current values of object
    #here i want a page to display with the cats attributes in a text box input 
    #with the values already filled out for them to change

    get "/cats/:id/edit" do
        @cat = Cat.find(params[:id])
        erb :"cats/edit"
    end

    #update
    #put or patch- post request to change values of existing object in database
    patch "/cats/:id" do
        @cat = Cat.find(params[:id])
        if !params["cat"]["name"].blank? && !params["cat"]["age"].blank? && !params["cat"]["personality"].blank? #using cat key pointing to hash of param values for easier integration with users
            @cat.update(params["cat"])
            redirect "/cats/#{@cat.id}"
        else
            @error = "Data invalid. Please try again"
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