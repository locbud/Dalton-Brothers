class CreateWhatFixedToDos < ActiveRecord::Migration
  def change
    create_table :what_fixed_to_dos do |t|
      t.string :title
      t.text :description
      t.string :scheduled_time
      t.integer :choice_count

      t.timestamps
    end
  end
end
