class AnswersController < ApplicationController

  def index
    answers Question.find(params[:question_id]).answers
    render json: answers
  end

  def create
    @answer = Answer.create(answer_params)
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end

end