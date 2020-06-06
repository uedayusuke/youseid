class Public::ReservationsController < ApplicationController
	def create
		post_image = PostImage.find(params[:post_image_id])
	  	reservation = Reservation.new(reservation_params)
	  	reservation.user_id = current_user.id
	  	reservation.post_image_id = post_image.id
	  	reservation.save
	  	redirect_to finish_post_image_reservations_path
	end

	def finish
	end

	private

	def reservation_params
		params.require(:reservation).permit(:title, :user_name, :user_email, :shop_id)
	end
end
