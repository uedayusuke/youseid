class Public::FavoritesController < ApplicationController
	def create
		post_image = PostImage.find(params[:post_image_id])
		favorite = current_user.favorites.new(post_image_id: post_image.id)
		favorite.save
		#元いたページにリダイレクト
		#redirect_back(fallback_location: root_path)
	end

	def destroy
		post_image = PostImage.find(params[:post_image_id])
		favorite = current_user.favorites.find_by(post_image_id: post_image.id)
		favorite.destroy
		#redirect_back(fallback_location: root_path)
	end
end
