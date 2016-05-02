class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
  end

  def edit
  end

  def show
  end

  def destroy
  end

end

