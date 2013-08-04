class SessionController < ApplicationController
  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      #session[:user_id] = user.id
      redirect_to(root_path)
    else
      redirect_to(login_path)
    end
  end
end
