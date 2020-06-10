class Reservation < ApplicationRecord

  #relations
  belongs_to :user
  belongs_to :post_image
  belongs_to :shop

  #with_optionsを用いてvalidates付与
  with_options presence: true do |r|
  	r.validates :user_id
  	r.validates :post_image_id
  	r.validates :title
  	r.validates :user_name
  	r.validates :user_email
  	r.validates :shop_id
  end

end
