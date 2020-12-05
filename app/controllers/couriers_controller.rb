class CouriersController < ApplicationController
	skip_before_action :authorized, only: [:new, :create]
  def new
    @courier = Courier.new
  end

  def create
    @courier = Courier.create(params.require(:courier).permit(:eMail, :password, :name, :surname, :phoneNumber, :PESEL))
    session[:courier_id] = @courier.id
    redirect_to '/app_root'
  end
end
