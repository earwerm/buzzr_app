# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  name            :string(255)
#

require 'spec_helper'

describe User do
  before do
    @user = User.new(:name => 'Bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a' )
  end

  it "should have a name" do
    @user.name.should eq('Bob')
  end

  it "should have an email" do
    @user.email.should eq('bob@gmail.com')
  end

  it "should have a password" do
    @user.password.should eq('a')
  end

  it "should confirm password" do
    @user.password_confirmation.should eq('a')
  end

  it "should validate presence of email and name" do
    @user.name.should_not eq(nil)
    @user.email.should_not eq(nil)
  end

  it "should have many locations" do
    @user.locations(:id).should_not eq(0)
  end
end

