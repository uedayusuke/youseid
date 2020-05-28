class Public::UsersController < ApplicationController
  def top
  end

  def about
  end

  def show
    @user = User.find(current_user.id)
  end

  def edit
  end

  def update
  end

  def cancel
  end

  def destroy
  end
end
