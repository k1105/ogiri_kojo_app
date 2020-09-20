class QuestionsController < ApplicationController
  def question
    @question = Question.all.sample
    @answer = Answer.new
  end
end
