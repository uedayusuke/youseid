class AddColumnsToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :user_name, :string
    add_column :contacts, :user_email, :string
  end
end
