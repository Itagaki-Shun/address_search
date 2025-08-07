# frozen_string_literal: true

class LocationsController < ApplicationController
  def index
  end

  def new
    @locations = Location.new
  end
end
