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
    #該当の投稿を取得
    @post_image = PostImage.find(params[:id])
    #ログインしているshopと該当の投稿をしたshopを同意に
    @post_image.shop.id = current_shop.id
  end

  def edit
    @post_image = PostImage.find(params[:id])
  end

  def update
    @post_image = PostImage.find(params[:id])
    @post_image.update(post_image_params)
    redirect_to admin_post_image_path
  end

  private

  def post_image_params
    params.require(:post_image).permit(:title, :body, :image, :price)
  end
end
