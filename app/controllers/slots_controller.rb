class SlotsController < ApplicationController
  def create
    authorize Slot.new
    @event = Event.find(params[:event_id])
    @slot = @event.slots.new(slot_params)
    if @slot.save
      redirect_to @event, notice: 'Slot added!'
    else
      render 'events/show'
    end
  end

  private

  def slot_params
    params.require(:slot).permit(:title, :start_time, :end_time)
  end
end
