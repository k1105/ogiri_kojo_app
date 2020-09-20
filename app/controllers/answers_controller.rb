class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answer_path(answer_id: @answer.id)
    else
      render 'question'
    end
  end
  
  def answer #回答表示ページ。
    if params[:answer_id].nil?#params[:answer_id]はcreateアクションを経由したときのみ与えられる
      redirect_to root_path
    else
      @answer = Answer.find(params[:answer_id])
    end
  end
  
  private
    def answer_params
      params.require(:answer).permit(:text)
    end
end
