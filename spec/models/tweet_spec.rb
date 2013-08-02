require 'spec_helper'

describe Tweet do
  before do
    @tweet = Tweet.new(:type => "rich", :author_name => "Twitter API", :cache_age => "31536000000", :height => null, :html => "<blockquote class=\"twitter-tweet tw-align-center\"><p>Search API will now always return \"real\" Twitter user IDs. The with_twitter_user_id parameter is no longer necessary. An era has ended. ^TS</p>&mdash; Twitter API (@twitterapi) <a href=\"https://twitter.com/twitterapi/status/133640144317198338\" data-datetime=\"2011-11-07T20:21:07+00:00\">November7, 2011</a></blockquote>\n<script src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>", :author_url => "https://twitter.com/twitterapi", :provider_name => "Twitter", :version => "1.0", :provider_url => "http://twitter.com", :url => "https://twitter.com/twitterapi/status/133640144317198338", :width => 550)
  end

  it "should have a type" do
    @tweet.type.should eq('rich')
  end

  it "should have an author name" do
    @user.author_name.should eq("Twitter API")
  end

  it "should have a cache age" do
    @tweet.cache_age.should eq('31536000000')
  end

  it "should have a height" do
    @tweet.height.should eq(null)
  end

  it "should have html" do
    @tweet.html.should eq("<blockquote class=\"twitter-tweet tw-align-center\"><p>Search API will now always return \"real\" Twitter user IDs. The with_twitter_user_id parameter is no longer necessary. An era has ended. ^TS</p>&mdash; Twitter API (@twitterapi) <a href=\"https://twitter.com/twitterapi/status/133640144317198338\" data-datetime=\"2011-11-07T20:21:07+00:00\">November7, 2011</a></blockquote>\n<script src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>")
  end

  it "should have an author url" do
    @tweet.author_url.should eq("https://twitter.com/twitterapi")
  end

  it "should have a provider name" do
    @tweet.provider_name.should eq("Twitter")
  end

  it "should have a version" do
    @tweet.version.should eq("1.0")
  end

  it "should have a provider_url" do
    @tweet.provider_url.should eq("http://twitter.com")
  end

  it "should have a url" do
    @tweet.url.should eq("https://twitter.com/twitterapi/status/133640144317198338")
  end

  it "should have a width" do
    @tweet.width.should eq("550")
  end
end