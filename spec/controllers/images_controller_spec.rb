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

      #it "should parse as JSON" do
       #lambda { JSON.parse(response.body) }.should_not raise_error
      #end
    end
  end
end
