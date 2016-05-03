class RidesController < ApplicationController

  def index
  end

  def new
    @ride = Ride.new
  end

  def create
    @attraction = Attraction.find_by(id: params[:attraction_id])
    @ride = @attraction.rides.create 
    @ride.user = current_user
    @message = @ride.take_ride
    redirect_to user_path(current_user), notice: "#{@message}"
  end

  def edit
  end

  def show
  end

  def destroy
  end

end