class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @putout = params[:question]
    if @putout.include? '?'
      @answers = 'Silly question get dressed and go to work!'
    elsif @putout.include? 'I am going to work'
      @answers = 'Great!'
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
