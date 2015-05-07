class AnswersController < ApplicationController

  before_action :authenticate_user!

  def index
    answers = Question.find(params[:question_id]).answers
    render json: answers
  end

  def create
    @answer = Answer.create(answer_params)
    render json: @answer
  end

  private

  def answer_params
    params.require(:answer).permit(:content).merge(user_id: current_user.id)
  end

end