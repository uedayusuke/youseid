class Comment < ApplicationRecord

  #relations
  belongs_to :user
  belongs_to :post_image

  #with_optionsを用いてvalidates付与
  with_options presence: true do |c|
  	c.validates :user_id
  	c.validates :post_image_id
  	c.validates :comment
  end

end
