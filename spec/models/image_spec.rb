# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'


describe Image do
  before do
    @image = Image.new
  end

  it "should have a latitude" do
    @image.latitude.should eq(44.0)
  end

  it "should have a longitude" do
    @image.longitude.should eq(69.0)
  end

  it "should have a name" do
    @image.name.should eq("Fishburners")
  end

  it "should have an ID" do
    @image.id.should eq(123456)
  end
end
