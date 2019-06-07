class PlacesController < ApplicationController
  def index
    @places = Place.order("name").page(params[:page]).per_page(4)
  end

  def new
    @place = Place.new
  end
  
end