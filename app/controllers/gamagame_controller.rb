class GamagameController < ApplicationController

  skip_before_action :prevent_access_question_without_game,  only: [:start, :create]

  def start
  end

  def create
    @game = GameBuilder.build
    if @game.save
      set_current_game(@game)
      redirect_to controller: :gamagame_questions, action: :edit, token: current_game.token
    end
  end

  def score
    @score = current_game.game_questions.is_correct.count
  end
end
