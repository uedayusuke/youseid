class AddDetailsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :title, :text
    add_column :reservations, :user_name, :string
    add_column :reservations, :user_email, :string
  end
end
