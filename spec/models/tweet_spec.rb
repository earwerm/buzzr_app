require 'spec_helper'

describe Tweet do
  before do

    @tweet = Tweet.new{
    :type => "rich",
    :author_name => "Twitter API",
    :cache_age => "31536000000",
    :height => null,
    :html => "<blockquote class=\"twitter-tweet tw-align-center\"><p>Search API will now always return \"real\" Twitter user IDs. The with_twitter_user_id parameter is no longer necessary. An era has ended. ^TS</p>&mdash; Twitter API (@twitterapi) <a href=\"https://twitter.com/twitterapi/status/133640144317198338\" data-datetime=\"2011-11-07T20:21:07+00:00\">November7, 2011</a></blockquote>\n<script src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>",
    :author_url => "https://twitter.com/twitterapi",
    :provider_name => "Twitter",
    :version => "1.0",
    :provider_url => "http://twitter.com",
    :url => "https://twitter.com/twitterapi/status/133640144317198338",
    :width => 550
    }

  end

end



describe User do
  before do
    @user = User.new(:name => 'Bob', :email => 'bob@gmail.com')
  end

  it "should have a name" do
    @tweet.type.should eq('rich')
  end

  it "should have an email" do
    @user.email.should eq('bob@gmail.com')
  end
end