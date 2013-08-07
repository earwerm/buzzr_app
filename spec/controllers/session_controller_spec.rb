require 'spec_helper'

describe SessionController do
  describe "Creating a session" do
    before(:each) do
      get :create
      User.stub(:email)
    end

    it "given a user is present" do
      response.should_not be_nil
    end

    it "should redirect to the root path" do
      response.should redirect_to(root_path)
    end

    context "given a user is not present" do

    end

    it "redirects to login path" do
      response.should redirect_to(login_path)
    end
  end
end
