class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string "name", null: false
      t.string "email", default: "", null: false
      t.string "subject"
      t.text "message", null: false
      t.timestamps
    end
  end
end
