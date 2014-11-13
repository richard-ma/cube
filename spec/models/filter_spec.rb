require 'rails_helper'

RSpec.describe Filter, :type => :model do
  it "must have filter_type" do
    #expect((build :filter, {:filter_type => 'ValidFilterType'}).valid?).to be false
    expect((build :filter, {:filter_type => ''}).valid?).to be false
    expect((build :filter, {:filter_type => nil}).valid?).to be false
  end

  it "must have regex" do
    expect((build :filter, {:regex => ''}).valid?).to be false
    expect((build :filter, {:regex => nil}).valid?).to be false
  end

  context "with post filter" do
    it "must accept post" do
      post = build :post, {:title => 'hello', :link => 'http://test.com/feed/'}
      expect((build :filter, {:regex => '.*', :filter_type => Filter::TYPE_TITLE}).accept?(post)).to be_truthy
    end

    it "must refuse post" do
      post = build :post, {:title => 'hello'}
      expect((build :filter, {:regex => '\d', :filter_type => Filter::TYPE_TITLE}).accept?(post)).to be_falsy
    end
  end
end
