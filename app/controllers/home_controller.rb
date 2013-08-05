class HomeController < ApplicationController
  def index
  end

# takes the form data from form partial on homepath
  def points
    locale = Location.create( :address => params[:locale] )
    lat = locale.latitude.to_f
    lng = locale.longitude.to_f
# instagram api
    url = "https://api.instagram.com/v1/locations/search.json?lat=#{lat.round(3)}&lng=#{lng.round(3)}&client_id=efea46f4c52542348ced4c529263cf33"
# creates an instance variable @result with the json object
    @result = HTTParty.get url
# makes the json data available for ajax
    render :json => @result
  end
end
