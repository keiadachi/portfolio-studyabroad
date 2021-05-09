class Guest::GuestsController < ApplicationController
  def show
  end

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = current_guest
      if @guest.update(guest_params)
        redirect_to root_path
      else
        render 'edit'
      end
  end

  private
  def guest_params
    params.require(:guest).permit(:email, :guest_passward, :name, :postal_code, :address, :phone_number, :guest_status)
  end

  def ensure_correct_guest
    @guest = Guest.find(params[:id])
      if current_guest.id != @guest.id
         redirect_to root_path
      end
  end

end
