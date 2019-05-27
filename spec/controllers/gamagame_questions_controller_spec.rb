require 'rails_helper'

RSpec.describe GamagameQuestionsController, type: :controller do

  let(:game) { Game.create(token: 'teste01') }
  let(:question ) { Question.create(
    external_id: "001",
    title: "Fill in the lyrics from Fresh Prince: 'My parents went away on a weeks vacation and they left the keys to the brand new _____.'",
    category: "Hip Hop Music",
    option1: "Porsche",
    option2: "Car",
    option3: "Chevy",
    option4: "Ride",
    answer: "1",
  ) }
  
  describe "GET #edit" do

    context "when current_game have questions to answer" do
      before do
        GameQuestion.create(
          game_id: game.id, 
          question_id: question.id,
          order_number: 1,
          selected_answer: nil,
          is_correct: nil
        )
      end

      it "returns http success" do
        get :edit, params: { token: game.token }
        expect(response).to have_http_status(:success)
      end
    end

    context "when current_game dont have more questions" do
      before do
        GameQuestion.create(
          game_id: game.id, 
          question_id: question.id,
          order_number: 1,
          selected_answer: "1",
          is_correct: true
        )
      end
      it "returns http redirect" do
        get :edit, params: { token: game.token }
        expect(response).to have_http_status(:redirect)
      end
    end
  end

  describe "GET #update" do
    let(:question_game) { GameQuestion.create(
      game_id: game.id, 
      question_id: question.id,
      order_number: 1,
      selected_answer: nil,
      is_correct: nil,
    )}
  
    it "returns http redirect" do
      put :update, params: { token: game.token, id: question_game.id, game_question: { selected_answer: "1"}}
      expect(response).to have_http_status(:redirect)
    end
  end

end
