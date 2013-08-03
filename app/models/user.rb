# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  email      :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :email
  has_many :locations

  validates_presence_of :email
  validates_presence_of :name
end
