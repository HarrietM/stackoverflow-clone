require 'rails_helper'

RSpec.describe User, type: :model do
  it "has many questions" do
    should have_many(:questions)
  end
  it "has many answers" do
    should have_many(:answers)
  end
end
