class Public::ShopsController < ApplicationController
  def show
  	@shop = Shop.find(params[:id])
  	#.order(created_at: :desc)で新着順に
  	@post_images = @shop.post_images.order(created_at: :desc)
  end
end
