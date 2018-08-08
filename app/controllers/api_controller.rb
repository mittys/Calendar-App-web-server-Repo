class ApiController < ApplicationController
        
def index
    @events = Event.search(params[:search])
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: @events}, status: :ok
end

def new
    @event = Event.new
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: @event}, status: :ok
end

def edit
  @event = Event.find(params[:id])
  render json: {status: 'SUCCESS', message: 'Loaded all posts', data: @event}, status: :ok

end

def show
    @event = Event.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: @event}, status: :ok
end

def create
	@event = Event.new(event_params)
  if @event.save
    redirect_to @event
  else
    render 'new'
  end
end

def update
  @event = Event.find(params[:id])
 
  if @event.update(event_params)
    redirect_to @event
  else
    render 'edit'
  end
end

def destroy
  @event = Event.find(params[:id])
  @event.destroy
  redirect_to events_path
end

end