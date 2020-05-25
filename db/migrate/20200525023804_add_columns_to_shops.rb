class AddColumnsToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :name, :string
    add_column :shops, :profile_image_id, :string
    add_column :shops, :postal_code, :string
    add_column :shops, :address, :text
  end
end
