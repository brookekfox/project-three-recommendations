class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

	include ActionController::ImplicitRender
	include ActionController::Helpers

	# before_action :require_login
	#
	# def require_login
	# 	unless logged_in?
	# 		flash[:error] = 'You must be logged in to access this section'
	# 		redirect_to root_path # halts request cycle
	# 	end
	# end
end
