# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  latitude   :float
#  longitude  :float
#

require 'spec_helper'

describe Location do
  before do
    @location = Location.new(:latitude => 44.0, :longitude => 69.0)
  end

  it "should have latitude" do
    @location.latitude.should eq(44.0)
  end

  it "should have longtitude" do
    @location.longitude.should eq(69.0)
  end
end

