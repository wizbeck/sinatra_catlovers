class Cat < ActiveRecord::Base
    belongs_to :user
    validates :name, :age, presence: true
    validates :age, numericality: {only_integer: true}
end