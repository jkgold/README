class ApplicationController < ActionController::Base
   include Pundit
  protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :flash_attack
 
 rescue_from Pundit::NotAuthorizedError do |exception|
 	redirect_to root_url, alert: exception.message
 end
 
	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) << :name
	end

	def flash_attack
		flash[:notice] = "Not allowed to new?"
	end
end
# def hello
# 	render text: "<h1>Hello</h1><p>Welcome home</p>"
# 	end
# end
