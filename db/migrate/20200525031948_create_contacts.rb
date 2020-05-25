class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :user_id
      t.integer :shop_id
      t.text :body

      t.timestamps
    end
  end
end
