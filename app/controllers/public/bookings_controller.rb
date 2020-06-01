class Public::BookingsController < ApplicationController
  def new
  	@shop = Shop.find(params[:shop_id])
  	@booking = Booking.new
  end

  def create
  	if Booking.create(create_params)
  		redirect_to finish_shop_bookings_path
  	else
  		render :new
  	end
  end

  def finish
  end

  private

  def create_params
  	params.require(:booking).permit(:datetime).merge(shop_id: params[:shop_id], user_id: current_user.id)
  end
end
