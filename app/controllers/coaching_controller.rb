class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask
  end

  private

  def coach_answer(question)
    if question == 'I am going on a hunt!'
      @coach_answer = "Good luck and don't die"
    elsif question.end_with?('?')
      'Stop asking stuffs and just go hunting.'
    else
      "'I don't care, go monster hunting!"
    end
  end
end
