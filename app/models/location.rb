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
  attr_accessible :address, :latitude, :longitude, :id
  geocoded_by :address
  attr_accessible :latitude, :longitude,
  after_validation :geocode, :if => lambda{ |obj| obj.address_changed? }
end
