# Crazy Cat Lovers
A web app powered by Sinatra following MVC principles.

This web app manages content between users, allowing them to add their cats to a website. Its a basic user sign up or login to access flow, that displays all cats and allows users to post their cats as well as view other users cats. 

## Prerequisites
Make sure Ruby and rvm are installed on your local machine before attempting to startup this sinatra based app.

## Getting Started
Follow these steps once you've forked the repository to your machine for testing.
After forking, run these commands IN ORDER:

```ruby
  $ bundle install
```
After bundle install completes, migrate and seed starter data:

```ruby 
  $ rake db:migrate 
  $ rake db:seed 
```
Then execute this line to get the local server started:
```ruby
  $ shotgun
```
This should launch the app to a localhost port, (default is localhost:9393, but yours may vary.)

If everything was installed properly you should see something like this in your terminal:

```ruby
  == Shotgun/Thin on http://127.0.0.1:9393/
  2021-05-10 13:26:31 -0700 Thin web server (v1.8.0 codename Possessed Pickle)
  2021-05-10 13:26:31 -0700 Maximum connections set to 1024
  2021-05-10 13:26:31 -0700 Listening on 127.0.0.1:9393, CTRL+C to stop
```
You can then navigate to the link that's given on your terminal and experience the Crazy Cat Lover's user experience.

### Contact

If you have any questions or inquiries you can reach me at beck.wes21@gmail.com.

### License
This project uses the following license: [MIT License](https://opensource.org/licenses/MIT)