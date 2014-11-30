class CreateWhatShouldAvoids < ActiveRecord::Migration
  def change
    create_table :what_should_avoids do |t|
      t.text :content

      t.timestamps
    end
  end
end
