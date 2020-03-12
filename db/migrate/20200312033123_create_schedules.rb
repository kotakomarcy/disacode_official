class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string  :event_type, null: false
      t.string  :title
      t.date    :date, null: false
      t.time    :open, null: false
      t.time    :start, null: false
      t.integer :advance_price
      t.integer :day_price
      t.string  :place_name, null: false
      t.string  :address
      t.text    :message
      t.string  :cast
      t.timestamps
    end
  end
end
