class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question ||= params[:question]
    if @question.nil? then @question == ""
    elsif @question == "I am going to work" then @answer = "Great!"
    elsif @question.last == "?" then @answer = "Silly question, get dressed and go to work!"
    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end
