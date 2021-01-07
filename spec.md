# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - used Corneal to generate a file structure for project to implement sinatra, sinatra-activerecord and necessary gems to build out the app.
- [x] Use ActiveRecord for storing information in a database create migrations using rake and migrating to database via db/migrate directory. - used rake tasks to accomplish using active record and inheriting activerecord migrations and base modules respectively
- [x] Include more than one model class (e.g. User, Post, Category) - I have a user class and cat class in the project
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has_many cats 
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Cat belongs_to User
- [x] Include user accounts with unique login attribute (username or email) - bcrypt authentication and #validates :username, :uniqueness and displays error at signup if the username is already taken
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - CRUD actions are labeled with the routes in the Cat class for easy identification
- [x] Ensure that users can't modify content created by other users- only users that are logged in can access the information and can only edit the information they created through conditions by hiding links to edit routes whether or not they created the specific content they view.
- [x] Include user input validations - used built in #validates method from ActiveRecord::Base inheritance on both User and Cat class
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - some error functionality with logging in signing up and creating a new Cat object via the form in cats/new.erb
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits - made commits as often as I remembered to, after building out meaningful progress to the project
- [x] Your commit messages are meaningful - I made commits after minor changes to the project to utilize commit message 
- [x] You made the changes in a commit that relate to the commit message - 
- [x] You don't include changes in a commit that aren't related to the commit message - making commits early and often to make a brief and meaningful commit message for progress on project