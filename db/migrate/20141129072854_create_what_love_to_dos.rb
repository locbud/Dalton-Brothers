class CreateWhatLoveToDos < ActiveRecord::Migration
  def change
    create_table :what_love_to_dos do |t|
      t.string :title
      t.text :description
      t.string :deadline
      t.integer :number_of_items
      t.string :user_estimated_time

      t.timestamps
    end
  end
end
