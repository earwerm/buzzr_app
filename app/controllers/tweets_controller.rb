class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(params[:tweet])
  end
end