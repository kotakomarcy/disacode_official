class ChangeContentsToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_table :contents, :contacts
  end
end
