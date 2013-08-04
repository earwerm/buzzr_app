require 'spec_helper'

describe SessionController do
  describe "#create" do
    before do
      get :create
      @user = User.new(:name => 'Bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a' )
      @user.save
    end

    context "given user is present" do
    end

      it "should redirect to the root path" do
        expect(response).to redirect_to(root_path)
      end

    context "given user is not present" do
    end

      it "should redirect to login path" do
        expect(response).to redirect_to(login_path)
    end
  end
end
