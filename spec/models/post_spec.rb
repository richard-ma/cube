require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "must have title" do
    expect((build :post, {:title => nil}).valid?).to be false
    expect((build :post, {:title => ''}).valid?).to be false
  end

  it "must have link" do
    expect((build :post, {:link => nil}).valid?).to be false
    expect((build :post, {:link => ''}).valid?).to be false
  end
  it "link must is a URI" do
    expect((build :post, {:link => 'http://this.is.a.valid.link/'}).valid?).to be true
    expect((build :post, {:link => 'a#invalid@link'}).valid?).to be false
  end
end
