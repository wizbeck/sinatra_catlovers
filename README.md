Welcome to the Crazy Cat Lovers Web App!

This web app manages content between users, allowing them to add their cats to a website. Its a basic user sign up or login to access flow, that displays all cats and allows users to post their cats as well as view other users cats. 

When forking the project, make sure to run these commands in the terminal: 
rake db:migrate 
rake db:seed 

Then use shotgun in the terminal and navigate to your localhost:(portnumber)




#TODO

-create migrations
-create models with relationships
-plan out routes for controllers using RESTful routes
-build controller actions and views simultaneously based on data passed.
-set up user functionality, sign up(sessions/cookies), log in, log out.
-set up user only able to edit their own posts and not other users
-build user authentication
add user authorization(be able to see certain data)


-users who aren't logged in have limited access
-user who ARE logged in have more access but cannot edit or delete other peoples content.