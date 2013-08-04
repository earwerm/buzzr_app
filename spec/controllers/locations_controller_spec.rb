require 'spec_helper'

describe LocationsController do

  describe 'GET to index' do
    before do
      get:index
      @location = Location.new
    end

    it "should give us the index template" do
      expect(response).to render_template("index")
    end

    it "should list all locations" do
      expect(response.content_type).to eq('text/html')
    end
  end
end
