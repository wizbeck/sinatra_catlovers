class User < ActiveRecord::Base
    has_secure_password
    validates :username, :password, presence: true
    # ^ helper method built into sinatra that allows use to refactor validation conditions for bad data being persisted to the database from controller actions.
    validates :username, uniqueness: true #eliminates need for controller action validation on having unique usernames for database and users
    has_many :cats
end