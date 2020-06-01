class Public::UsersController < ApplicationController
  def top
  end

  def about
  end

  def show
    @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    #マイページにリダイレクト
    redirect_to "/user"
  end

  def cancel
  end

  def destroy
    @user = User.find(current_user.id)
    @user.destroy
    #退会処理後、topページにリダイレクト
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number)
  end
end
