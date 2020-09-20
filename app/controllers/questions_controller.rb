class QuestionsController < ApplicationController
  def show
    @questions = Question.all.sample(4)
    @questions = Kaminari.paginate_array(@questions).page(params[:page]).per(1)
    @answer = Answer.new
  end
end
