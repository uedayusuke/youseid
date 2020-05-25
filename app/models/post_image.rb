class PostImage < ApplicationRecord

  #relations
  belongs_to :shop
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy

  #with_optionsを用いてvalidates付与
  with_options presence: true do |pi|
  	pi.validates :shop_id
  	pi.validates :image_id
  	pi.validates :title
  	pi.validates :body
  	pi.validates :price
  end
end
