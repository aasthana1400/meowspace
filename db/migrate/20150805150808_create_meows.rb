class CreateMeows < ActiveRecord::Migration
  def change
    create_table :meows do |t|
      t.string :message
      t.belongs_to :cat  

      t.timestamps
    end
  end
end
