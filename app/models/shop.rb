class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #relations
  has_many :post_images, dependent: :destroy
  has_many :contacts, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reservations, dependent: :destroy
  #with_optionsを用いてvalidates付与
  with_options presence: true do |s|
  	s.validates :name
  	s.validates :postal_code
  	s.validates :address
  end
  #日本の郵便番号は7桁
  validates :postal_code, format: { with: /\A\d{7}\z/}


end
