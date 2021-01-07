class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :personality
      t.string :breed
      t.string :color
      t.string :fur_type
      t.integer :user_id
    end
  end
end
