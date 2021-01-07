class CreateBreedsCats < ActiveRecord::Migration
  def change
    create_join_table :cats, :breeds do |t|
      t.integer :cat_id
      t.integer :breed_id
    end
  end
end
