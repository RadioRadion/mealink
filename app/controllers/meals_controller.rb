class MealsController < ApplicationController
  def index
    @search = current_user.searches.last
    @cookers = Cooker.near([@search.latitude, @search.longitude], @search.distance)
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @cookers.geocoded.map do |cooker|
      {
        lat: cooker.latitude,
        lng: cooker.longitude
      }
    end
  end
end
