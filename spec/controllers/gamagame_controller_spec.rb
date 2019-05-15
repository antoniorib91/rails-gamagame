require 'rails_helper'

RSpec.describe GamagameController, type: :controller do

  describe "GET #start" do
    it "returns http success" do
      get :start
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #question" do
    it "returns http success" do
      get :question
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #score" do
    it "returns http success" do
      get :score
      expect(response).to have_http_status(:success)
    end
  end

end
