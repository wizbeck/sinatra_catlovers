class Breed < ActiveRecord::Base
has_many :cats, through: :cats_breeds

end