# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
  end

  def new
    @locations = Location.new
  end

  def create
    @locations = Location.new(location_params)

    if @location.save
      redirect_to @location
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def location_params
    params.require(:location).permit(:longitude, :latitude)
  end
end
