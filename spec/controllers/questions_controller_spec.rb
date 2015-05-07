require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  # before(:all) do
  #   @request.env["devise.mapping"] = Devise.mappings[:user]
  #   # sign_in :user, user
  # end

  it "routes get /create to create" do
    should route(:post, '/questions').to(action: :create)
  end

  it "creates a new Question" do
    expect {
      post :create, question: FactoryGirl.attributes_for(:question)
    }.to change(Question, :count).by(1)
  end


end