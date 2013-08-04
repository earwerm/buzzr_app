require 'spec_helper'

describe SessionController do
  describe "Creating a session" do
    before(:each) do
      User.stub
    end

    it "should check if a user is present" do
      get :create
    end

    it "should redirect to the root path" do
      response.should redirect_to(root_path)
    end

    it "given user is not present" do
    end

    it "redirects to login path" do
      response.should redirect_to(login_path)
    end
  end
end
