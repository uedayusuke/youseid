class Public::ContactsController < ApplicationController
  def new
  	@shop = Shop.find(params[:shop_id])
  	@contact = Contact.new
  end

  def
  	# ".create"でnewとsaveを同時に行う
  	if Contact.create(create_params)
  		#登録内容に不備がなければ問い合わせ完了ページにリダイレクト
  		redirect_to finish_shop_contacts_path
  	else
  		#不備があった場合は問い合わせページから遷移しない
  		render :new
  	end
  end

  def finish
  end

  private

  def create_params
  	#paramsに含まれない値をmergeで補填し、関連づけ
  	params.require(:contact).permit(:body).merge(shop_id: params[:shop_id], user_id: current_user.id)
  end
end
