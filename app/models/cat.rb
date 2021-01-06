class Cat < ActiveRecord::Base
    belongs_to :user
    has_many :breeds, through: :cats_breeds
    validates :name, :age, presence: true
end