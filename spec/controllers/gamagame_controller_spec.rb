require 'rails_helper'

RSpec.describe GamagameController, type: :controller do

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
  let(:game_question) { GameQuestion.create(
    game_id: game.id, 
    question_id: question.id,
    order_number: 1,
    selected_answer: "1",
    is_correct: true
  )}
  let(:game_question2) { GameQuestion.create(
    game_id: game.id, 
    question_id: question.id,
    order_number: 2
  )}

  describe "GET #start" do
    before do
      get :start
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "should render start template" do
      expect(response).to render_template(:start)  
    end
  end

  describe "POST #create" do
    before do
      post :create
    end
    it "returns http redirect" do
      expect(response).to have_http_status(:redirect)
    end
    
  end

  describe "GET #score" do    
    before do
      get :score, params: { token: game.token }
    end
  
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "should render score template" do
      expect(response).to render_template('score')  
    end
  end

end
