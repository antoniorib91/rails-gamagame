class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :prevent_access_question_without_game

  def prevent_access_question_without_game
    if current_game.nil?
      game = Game.find_by(token: params[:token]) unless params[:token].nil?
      set_current_game(game) unless game.nil?
      redirect_to root_url if current_game.nil?
    end
  end

  def set_current_game(game)
    @current_game = game;
  end

  def current_game
    @current_game
  end

  
end
