class AddAdminUserRefToPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :admin_user, foreign_key: true
  end
end
