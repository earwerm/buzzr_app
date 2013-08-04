class UsersController < ApplicationController
  def index
    @users = User.new
  end
end
