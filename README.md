# Crazy Cat Lovers
A web app powered by Sinatra following MVC principles.

This web app manages content between users, allowing them to add their cats to a website. Its a basic user sign up or login to access flow, that displays all cats and allows users to post their cats as well as view other users cats. 

## Prerequisites
BEFORE RUNNING ANY OF THE BELOW COMMANDS:
```ruby
  $ bundle install
```

When forking the project, make sure to run these commands in the terminal: 
```ruby 
  $ rake db:migrate 
  $ rake db:seed 
```
Then execute:
```ruby
  $ shotgun
```
This should launch the app onto a localhost port, (default is localhost:9393, but yours may vary.)

If everything was installed properly you should see something like this in your terminal:

![SHOTGUN_IMG](https://gyazo.com/3bb2960b0669bd897143c49a8281ba03)