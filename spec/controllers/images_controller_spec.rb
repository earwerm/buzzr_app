require 'spec_helper'

describe ImagesController do

  describe 'GET to index' do

    describe 'as HTML' do
      before do
        get:index
      end

      it "should give us the index template" do
        expect(response).to render_template("index")
      end
    end

    describe "as JSON" do
      before do
        get :index, :format => :json
      end

      it "should respond with a status 200" do
       expect(response).to be_success
       expect(response.status).to eq(200)
      end

      it "should give content type JSON" do
       expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'GET to show' do
    before do
      @image = Image.new
    end

    it "should render the show template" do
      get :show, {:id => @image.id}
      expect(response).to render_template("show")
    end

    it "should place the image on the page" do
      expect(response).to be_success
    end
  end
end
