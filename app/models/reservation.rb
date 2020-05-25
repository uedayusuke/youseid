class Reservation < ApplicationRecord

  #relations
  belongs_to :user
  belongs_to :post_image

  #with_optionsを用いてvalidates付与
  with_options presence: true do |r|
  	r.validates :user_id
  	r.validates :post_image_id
  end

end
