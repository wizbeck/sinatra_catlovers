class CreateCatsBreeds < ActiveRecord::Migration
  def change
    create_table :cats_breeds do |t|
      t.integer :cat_id
      t.integer :breed_id
    end
  end
end
