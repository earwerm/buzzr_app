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
<<<<<<< HEAD
  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode :if => :address_changed?
=======
  attr_accessible :latitude, :longitude, :id
>>>>>>> aebcfa96e91ae37e4959a77778b5a3568a2079ef
end
