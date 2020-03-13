class AddAdminUserRefToSchedules < ActiveRecord::Migration[5.2]
  def change
    add_reference :schedules, :admin_user, foreign_key: true
  end
end
