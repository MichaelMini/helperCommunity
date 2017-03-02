class RoomsController < ApplicationController
  def show
  end

  def create
    @room = Room.create!(room_params)
    @room.save
  end


  private
    def room_params
      params.require(:room).permit(
        :title,
        :event_id
      )
    end
end
