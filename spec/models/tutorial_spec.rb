require 'rails_helper'

RSpec.describe Tutorial, :type => :model do
  it "shuold have rss feed" do
    expect((build :tutorial, {:rss_feed => ''}).valid?).to be false
    expect((build :tutorial, {:rss_feed => nil}).valid?).to be false
  end

  it "shuold have title" do
    expect((build :tutorial, {:title => ''}).valid?).to be false
    expect((build :tutorial, {:title => nil}).valid?).to be false
  end

  it "rss feed should be URI" do
    expect((build :tutorial, {:rss_feed =>'http://valid.link.com'}).valid?).to be true
    expect((build :tutorial, {:rss_feed =>'this#is@an*invalid@link'}).valid?).to be false
  end

  it "with 5 posts and 5 filters" do
    # create posts test
    expect(create(:tutorial_with_posts_and_filters).posts.length).to eq 5
    expect(create(:tutorial_with_posts_and_filters).filters.length).to eq 5
  end
end
