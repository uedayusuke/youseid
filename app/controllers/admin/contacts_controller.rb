class Admin::ContactsController < ApplicationController
	def index
	  	#whereを用いて、bookingに保存されているshop_idからログインしているshop.idを拾う
	  	@contacts = Contact.where(shop_id: current_shop.id)
	end
end
