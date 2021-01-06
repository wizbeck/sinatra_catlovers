class Cat < ActiveRecord::Base
    belongs_to :user
    validates :name, :age, presence: true
end