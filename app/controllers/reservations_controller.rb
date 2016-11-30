class ReservationsController < ApplicationController
  def create
    redirect_to root_path unless current_user
    @user = current_user
    @slot = Slot.find_by_uid(reservation_params['uid'])
    @slot.users << @user
    redirect_to @slot.event
  end
  def guest_new
    @slot = Slot.find_by_uid(params[:slot_id])
  end
  def guest_create
    @slot = Slot.find_by_uid(reservation_params['uid'])
    @user = User.find_by_email(reservation_params['email'])
    @slot.users << @user if @user
    redirect_to @slot.event
  end

  private

  def reservation_params
    params.require(:reservation).permit(:uid, :email)
  end
end
