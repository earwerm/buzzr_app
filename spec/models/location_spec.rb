# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  latitude   :float
#  longitude  :float
#  address    :string(255)
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

