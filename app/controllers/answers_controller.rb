class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answer_path(answer_id: @answer.id)
    else
      @question = answer_params[:question_id]
      render 'questions/question'
    end
  end
  
  def answer #回答表示ページ。
    if params[:answer_id].nil? #params[:answer_id]はcreateアクションを経由したときのみ与えられる
      redirect_to root_path
    else
      @answer = Answer.find(params[:answer_id])
      @best_answers = Answer.where(question_id: @answer.question_id)
      @question = @answer.question
    end
  end
  
  private
    def answer_params
      params.require(:answer).permit(:text, :question_id)
    end
end
