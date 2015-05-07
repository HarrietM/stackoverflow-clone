class VisitorsController < ApplicationController

  def index
    @questions = Question.all
  end

end
