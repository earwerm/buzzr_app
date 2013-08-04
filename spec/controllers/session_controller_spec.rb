require 'spec_helper'

describe SessionController do
  describe "Creating a session" do
    before do
      get :create
      @user = User.new(:name => 'Bob')
      @user.save
    end

    it "should redirect to the home page when user present" do
      expect(response).to be_success
      expect(response.status).to eq(200)
      expect(response).to redirect_to('home/index')
    end
  end
end
