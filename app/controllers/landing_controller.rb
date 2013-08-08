class LandingController < ApplicationController
  def index
  end

  def map
  end

  def photo
    id = params[:id]
    url = "https://api.instagram.com/v1/locations/#{id}/media/recent?client_id=efea46f4c52542348ced4c529263cf33"
    @images = HTTParty.get url
    render :json => @images
  end
end