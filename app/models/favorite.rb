class Favorite < ApplicationRecord
  #relations
  belongs_to :user
  belongs_to :post_image

  #with_optionsを用いてvalidates付与
  with_options presence: true do |f|
  	f.validates :user_id
  	f.validates :post_image_id
  end

end
