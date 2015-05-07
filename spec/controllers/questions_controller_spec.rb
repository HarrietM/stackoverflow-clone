require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  # before(:all) do
  #   @request.env["devise.mapping"] = Devise.mappings[:user]
  #   # sign_in :user, user
  # end

  it "routes post /questions to create" do
    should route(:post, '/questions').to(action: :create)
  end
  it "routes get /questions to index" do
    should route(:get, '/questions').to(action: :index)
  end
  it "routes get /questions/:id to show" do
    should route(:get, '/questions/:id').to(action: :show, id: ":id")
  end


  it "creates a new Question" do
    expect {
      post :create, question: FactoryGirl.attributes_for(:question)
    }.to change(Question, :count).by(1)
  end
  it "shows a specific Question and returns it as json" do
    question = Question.create(content: "blah-blah")
    get :show, id: question.id
    assigns(:question).should == question
    expect(response) == question.to_json
  end
end