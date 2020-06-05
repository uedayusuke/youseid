class PostImage < ApplicationRecord

  #relations
  belongs_to :shop
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  #画像投稿メソッド
  attachment :image

  #with_optionsを用いてvalidates付与
  with_options presence: true do |pi|
  	pi.validates :shop_id
    pi.validates :user_id
  	pi.validates :image
  	pi.validates :title
  	pi.validates :body
  	pi.validates :price
  end
end
