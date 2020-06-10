class AddUserIdToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :user_id, :integer
  end
end
