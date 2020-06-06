class Admin::ReservationsController < ApplicationController
  def index
  	#whereを用いて、reservationに保存されているshop_idからログインしているshop.idを拾う
  	@reservations = Reservation.where(shop_id: current_shop.id)
  end
end
