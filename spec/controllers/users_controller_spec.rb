require 'spec_helper'

describe UsersController do

  describe 'GET to index' do
    before do
      get:index
      @user = User.new
    end

    it "should give us the index template" do
      expect(response).to render_template("index")
    end

    it "should list all users" do
      expect(response.content_type).to eq('text/html')
    end
  end
end
