class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #relation
  has_many :contacts, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy

  #with_optionsを用いてvalidates付与
  with_options presence: true do |u|
  	u.validates :name
  	u.validates :phone_number
  end

  #日本の電話番号は10か11桁
  validates :phone_number, format: { with: /\A\d{10,11}\z/}

end
