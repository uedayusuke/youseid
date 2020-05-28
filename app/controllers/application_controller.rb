class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	#deviseのストロングパラメータ記述
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :phone_number, :postal_code, :address])
	end

end
