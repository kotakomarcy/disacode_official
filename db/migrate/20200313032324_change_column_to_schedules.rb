class ChangeColumnToSchedules < ActiveRecord::Migration[5.2]
  def change

    def up
      change_column :schedules, :date, :date, null: true, default: 0
    end

    def down
      change_column :schedules, :date, :date, null: false
    end

  end
end
