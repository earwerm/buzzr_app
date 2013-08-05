class LandingController < ApplicationController

  def index
  end

  def points

    locale = params[:locale]

    lat = GEOCODEBLAH
    lng = GEOCODEBLAH
    url = "https://api.instagram.com/v1/locations/search.json?lat=#{lat.round(4)}&lng=#{lng.round(4)}&client_id=efea46f4c52542348ced4c529263cf33"
    @result = HTTParty.get url
    # @result.data.each do |locale|
    #   Location.create(locale.latitude, locale.longitude)
    # end
    render :json => @result
  end

# step by step
# 1. create form to enter location => locale = params[:locale]
# 2. use geocode to spit out lat lng
#     lat = GEOCODEBLAH
#     lng = GEOCODEBLAH
# 3. feed lat lng to HTTParty request
# 4. pass returned JSON object to AJAX for rendering via draw_points function
# 5. integrate google maps into the draw_points function

  def map
  end

end