class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :shop_id
      t.datetime :datetime

      t.timestamps
    end
  end
end
