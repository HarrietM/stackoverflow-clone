require 'rails_helper'

RSpec.describe Answer, type: :model do
  it "belongs to a user" do
    should belong_to(:user)
  end
  it "belongs to a question" do
    should belong_to(:question)
  end
end
