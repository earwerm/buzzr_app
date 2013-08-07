class LandingController < ApplicationController

  def index
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

  def photo
    id = params[:id]
    url = "https://api.instagram.com/v1/locations/#{id}/media/recent?client_id=efea46f4c52542348ced4c529263cf33"
    @images = HTTParty.get url
    render :json => @images
  end
end