class ImagesController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render :json => @images }
    end
  end

  def show
  end
end
