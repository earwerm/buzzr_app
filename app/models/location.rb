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

class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :id
end
