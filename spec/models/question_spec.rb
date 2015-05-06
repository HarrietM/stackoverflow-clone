require 'rails_helper'

RSpec.describe Question, type: :model do
  it "belongs to a user" do
    should belong_to(:user)
  end
  it "has many answers" do
    should have_many(:answers)
  end
end
