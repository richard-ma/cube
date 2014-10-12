require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "valid post" do
    expect((build :valid_post).valid?) == TRUE
    expect((build :invalid_post).valid?) == FALSE
    expect((build :empty_title_post).valid?) == FALSE
  end
end
