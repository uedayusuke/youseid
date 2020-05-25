class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.integer :shop_id
      t.string :image_id
      t.text :title
      t.text :body
      t.integer :price

      t.timestamps
    end
  end
end
