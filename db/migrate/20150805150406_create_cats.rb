class CreateCats < ActiveRecord::Migration
  # def change
  # end

  def up #creates the table
    create_table :cats do |t|
      t.string  :name
      t.integer :age
      t.string  :breed
    end
  end

  def down #'drops'/deletes the table
    drop_table :cats
  end
end
