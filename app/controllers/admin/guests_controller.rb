class Admin::GuestsController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @guests = Guest.all
  end

  def show
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
     if @guest.update(guest_params)
       redirect_to admin_guests_path
     else
       render "edit"
     end
  end

  def quit
  end

  def out
  end

  private
  def guest_params
    params.require(:guest).permit(:email, :guest_passward, :name, :postal_code, :address, :phone_number, :guest_status)
  end

end
