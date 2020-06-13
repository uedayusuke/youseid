class Admin::ReservationsController < ApplicationController
  def index
  	#whereを用いて、reservationに保存されているshop_idからログインしているshop.idを拾う
  	#.order(created_at: :desc)で新着順に
  	@reservations = Reservation.where(shop_id: current_shop.id).order(created_at: :desc)
  end
end
