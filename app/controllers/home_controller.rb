class HomeController < ApplicationController
  def index
  end

  def points
    locale = Location.create( :address => params[:locale] )

    lat = locale.latitude.to_f
    lng = locale.longitude.to_f

    url = "https://api.instagram.com/v1/locations/search.json?lat=#{lat.round(3)}&lng=#{lng.round(3)}&client_id=efea46f4c52542348ced4c529263cf33"

    @result = HTTParty.get url


    # @result.data.each do |locale|
    #   Location.create(locale.latitude, locale.longitude)
    # end
    render :json => @result
end

end
