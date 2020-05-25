class Booking < ApplicationRecord

  #relations
  belongs_to :user
  belongs_to :shop

  #with_optionsを用いてvalidates付与
  with_options presence: true do |b|
  	b.validates :user_id
  	b.validates :shop_id
  	b.validates :datetime
  end

end
