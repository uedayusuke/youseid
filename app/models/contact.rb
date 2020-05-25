class Contact < ApplicationRecord

  #relations
  belongs_to :user
  belongs_to :shop

  #with_optionsを用いてvalidates付与
  with_options presence: true do |c|
  	c.validates :user_id
  	c.validates :shop_id
  	c.validates :body
  end

end
