class AddDetails2ToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :shop_id, :integer
  end
end
