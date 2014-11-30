class CreateWhatOptionalToDos < ActiveRecord::Migration
  def change
    create_table :what_optional_to_dos do |t|
      t.string :title
      t.text :description
      t.string :funtionalities

      t.timestamps
    end
  end
end
