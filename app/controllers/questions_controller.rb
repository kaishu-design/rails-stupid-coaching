class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:query]
    if @question == 'I am going to work(仕事に行ってきます)'
      @answer = 'Great! 頑張って行ってらっしゃい👋'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!  早く準備して仕事に行きなさい'
    else
      @answer = "I don't care, get dressed and go to work! 早く準備して仕事に行きなさい"
    end
  end
end
