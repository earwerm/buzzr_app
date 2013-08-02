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
  end
end
