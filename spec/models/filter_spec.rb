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
end
