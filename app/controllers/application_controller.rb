class ApplicationController < ActionController::Base
	before_action :authorized
	helper_method :current_user
	helper_method :logged_in?

	def logged_in?

		!current_user.nil?
	end

	def current_user
		if session[:client_id]
			Person.find_by(id: session[:client_id])
		elsif session[:courier_id]
			Person.find_by(id: session[:courier_id])
		end
	end

	def authorized
		redirect_to '/' unless logged_in?
	end
end
