class Admin::ShopsController < ApplicationController
  def show
  	@shop = Shop.find(current_shop.id)
    @post_images = PostImage.where(shop_id: current_shop.id)
  end

  def edit
  	@shop = Shop.find(current_shop.id)
  end

  def update
  	@shop = Shop.find(current_shop.id)
  	@shop.update(shop_params)
  	redirect_to admin_shop_path
  end

  def cancel
  end

  private

  def shop_params
  	params.require(:shop).permit(:name, :email, :postal_code, :address)
  end

end
