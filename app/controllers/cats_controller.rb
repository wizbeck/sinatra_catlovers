class CatsController < ApplicationController


    #show - read all
    get "/cats" do
        @cats = Cat.all
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
    #persist new cat to database, and redirect to individual show page
    post "/cats" do

    end
        

#UPDATE
    #edit -render erb form with current values of object
    get "/cats/:id/edit" do
        erb :"views/cats/edit"
    end

    #update
    #put or patch- post request to change values of existing object in database
    patch "cats/:id" do
        redirect to "cats/#{@cat.id}" #similar to
    end


#DELETE/destroy- create a delete button, as a form disguised in a show page or read page
#   create a delete HTTP request to delete from database
    delete "cats/:id" do
        @cat = Cat.find(:id)
        @cat.destroy
    end
    
end