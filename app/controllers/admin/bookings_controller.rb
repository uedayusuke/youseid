class Admin::BookingsController < ApplicationController
  def index
  	#whereを用いて、bookingに保存されているshop_idからログインしているshop.idを拾う
  	@bookings = Booking.where(shop_id: current_shop.id)
  end
end
