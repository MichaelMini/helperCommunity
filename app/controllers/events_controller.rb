class EventsController < ApplicationController

  def index
    @events = Event.includes(:user)

    respond_to do |format|
      format.html
      format.json {
        render :json => @events, :include => :user
      }
    end

  end

  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @event }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)

    @event.user_id = current_user.id if current_user

    if @event.save
      render json:@event
    else
      render json:{ result: 'failed to save', errors: @event.errors.full_messages }, status: 400
    end
  end

  def accept_event
    @event = Event.find(params[:id])
    @event.users << current_user

    HelperList.create!(event_id: @event.id, user_id: current_user.id)

    redirect_to :event
  end


  private
    def event_params
      params.require(:event).permit(:title, :description, :scheduled_at, :address, :end_address)
    end
end