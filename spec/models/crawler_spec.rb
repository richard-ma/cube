require 'rails_helper'

RSpec.describe Crawler, :type => :model do
  it "should can running" do
    tutorial = build :tutorial
    crawler = Crawler.new
    crawler.crawl tutorial
    expect(tutorial.posts.length).to be > 0
  end
end
