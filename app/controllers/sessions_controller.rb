class SessionsController < ApplicationController
	skip_before_action :authorized, only: [:new, :create]
	def new
  	end

  	def create
    	@courier = Courier.find_by("eMail": params[:eMail])
		@client = Client.find_by("eMail": params[:eMail])
    	if @courier  && @courier.authenticate(params[:password])
      		session[:courier_id] = @courier.id
      		redirect_to '/welcome'
		elsif @client  && @client.authenticate(params[:password])
			session[:client_id] = @client.id
			redirect_to '/welcome'
		else
			redirect_to '/'
		end
  	end

  	def login
  	end

  	def welcome
	end

	def logout
		session[:client_id] = nil
		session[:courier_id] = nil
		redirect_to '/'
	end
end
