class Public::PostImagesController < ApplicationController
  def index
  	#.order(created_at: :desc)で新着順に
  	@post_images = PostImage.all.order(created_at: :desc)
  end

  def show
  	@post_image = PostImage.find(params[:id])
  	@reservation = Reservation.new
  	@comment = Comment.new
  	@comments = @post_image.comments.order(created_at: :desc)
  end
end
