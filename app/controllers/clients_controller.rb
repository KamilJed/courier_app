class ClientsController < ApplicationController
	skip_before_action :authorized, only: [:new, :create]
  def new
    @client = Client.new
  end

  def create
    @client = Client.create(params.require(:client).permit(:eMail, :password, :name, :surname, :phoneNumber, :PESEL, :address))
    session[:client_id] = @client.id
    redirect_to '/app_root'
  end
end
