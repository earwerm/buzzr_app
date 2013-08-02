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

require 'spec_helper'

describe User do
  before do
    @user = User.new(:name => 'Bob', :email => 'bob@gmail.com', )
  end

  it "should have a name" do
    @user.name.should eq('Bob')
  end

  it "should have an email" do
    @user.email.should eq('bob@gmail.com')
  end
end

