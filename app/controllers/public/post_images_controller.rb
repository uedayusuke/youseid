class Public::PostImagesController < ApplicationController
  def index
  	@post_images = PostImage.all
  end

  def show
  	@post_image = PostImage.find(params[:id])
  	@reservation = Reservation.new
  end
end
