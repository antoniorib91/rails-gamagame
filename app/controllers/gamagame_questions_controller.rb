class GamagameQuestionsController < ApplicationController

  def edit
    @gameQuestion = current_game.game_questions.answer_null.order_by_number.first

    redirect_to score_path, token: current_game.token unless !@gameQuestion.nil?
    @question = @gameQuestion.question unless @gameQuestion.nil?
  end

  def update
    @gameQuestion = GameQuestion.find(params[:id])
    question = @gameQuestion.question
    puts "HERE QUESTION ANSWER #{question.answer}"
    puts "HERE GAMAGAME_QUESTION ANSWER #{question.answer}"

    if  gamagame_questions_params[:selected_answer] != question.answer
      @gameQuestion.is_correct = false 
    else
      @gameQuestion.is_correct = true 
    end
    
    if @gameQuestion.update(gamagame_questions_params)
      redirect_to questions_path #current_game.token
    end
  end

  private

  def gamagame_questions_params
    params.required(:game_question).permit(:id, :game_id, :question_id, :order_number, :selected_answer, :is_correct)
  end 

end
