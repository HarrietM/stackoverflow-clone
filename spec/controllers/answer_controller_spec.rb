require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
  it "routes post /answers to create" do
    should route(:post, '/answers').to(action: :create)
  end
  it "routes post /questions/:question_id/answers to index" do
    should route(:get, '/questions/:question_id/answers').to(action: :index, question_id: ":question_id")
  end
end