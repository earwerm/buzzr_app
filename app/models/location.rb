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

class Location < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :latitude, :longitude, :address
  geocoded_by :address
  after_validation :geocode, :if => lambda{ |obj| obj.address_changed? }
=======
<<<<<<< HEAD
  attr_accessible :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode :if => :address_changed?
=======
  attr_accessible :latitude, :longitude, :id
>>>>>>> aebcfa96e91ae37e4959a77778b5a3568a2079ef
>>>>>>> 5071e94ac7a0dd8464f6ec23c07b81e16581b4ad
end

# geocode gem is used here, it requires additional address column in the locations table
