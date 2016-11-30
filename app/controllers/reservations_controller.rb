class ReservationsController < ApplicationController
  def create
    redirect_to root_path unless current_user
    @user = current_user
    @slot = Slot.find_by_uid(reservation_params['uid'])
    @slot.users << @user
    redirect_to @slot.event
  end

  private

  def reservation_params
    params.require(:reservation).permit(:uid)
  end
end
