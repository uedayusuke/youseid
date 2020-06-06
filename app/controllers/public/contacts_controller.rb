class Public::ContactsController < ApplicationController
  def new
  	@shop = Shop.find(params[:shop_id])
  	@contact = Contact.new
  end

  def create
    #".create"でnew/saveを同時に行う
    if Contact.create(create_params)
      redirect_to finish_shop_contacts_path
    else
      render :new
    end
  end


  def finish
  end

  private

  def create_params
  	#paramsに含まれない値をmergeで補填し、関連づけ
  	params.require(:contact).permit(:body, :user_name, :user_email).merge(shop_id: params[:shop_id], user_id: current_user.id)
  end
end
