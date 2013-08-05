# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Image < ActiveRecord::Base
  attr_accessor :latitude, :longitude, :id, :name

  def initialize
    @latitude = 44.0
    @longitude = 69.0
    @name = "Fishburners"
    @id = 123456
  end
end
