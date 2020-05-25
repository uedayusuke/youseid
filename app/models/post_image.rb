class PostImage < ApplicationRecord
  belongs_to :shop
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
