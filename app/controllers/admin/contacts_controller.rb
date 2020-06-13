class Admin::ContactsController < ApplicationController
	def index
	  	#whereを用いて、bookingに保存されているshop_idからログインしているshop.idを拾う
  		#.order(created_at: :desc)で新着順に
	  	@contacts = Contact.where(shop_id: current_shop.id).order(created_at: :desc)
	end
end
