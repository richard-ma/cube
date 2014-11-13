require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "valid post" do
    expect((create :valid_post).valid?) == TRUE
    #expect((build :invalid_post).valid?) == FALSE
    expect((create :empty_post).valid?) == FALSE
  end
end
