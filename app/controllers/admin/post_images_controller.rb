class Admin::PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    #ログインしている人以外は投稿できない
    @post_image.shop_id = current_shop.id
    #登録内容に不備がある場合はrenderで新規投稿ページに戻る
    if @post_image.save
      redirect_to admin_post_image_path(@post_image.id)
    else
      render :new
    end
  end

  def show
    @post_image = PostImage.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def post_image_params
    params.require(:post_image).permit(:title, :body, :image, :price)
  end
end
