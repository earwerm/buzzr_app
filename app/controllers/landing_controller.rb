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

end