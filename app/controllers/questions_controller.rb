class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach_answer = 
      if params[:respuesta] == "I am going to work right now!"
        ""
      elsif params[:respuesta].include?("?")
        "Silly question, get dressed and go to work!"
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
