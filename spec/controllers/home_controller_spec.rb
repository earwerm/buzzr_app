require 'spec_helper'

describe HomeController do
  describe 'GET to index' do
    before do
      get:index
    end

    it "should give us the index template" do
      expect(response).to render_template("index")
    end
  end

  describe 'POST to map' do
    before do
      get:map
    end

    it "should show us the chosen map" do
      expect(response).to render_template("map")
    end
  end
end
