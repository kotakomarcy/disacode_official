class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
