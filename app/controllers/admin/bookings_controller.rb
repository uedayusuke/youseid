class Admin::BookingsController < ApplicationController
  def index
  	@bookings = Booking.where(shop_id: current_shop.id)
  end
end
