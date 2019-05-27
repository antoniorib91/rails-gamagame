require 'rails_helper'

RSpec.describe Game, type: :model do

  context "#associations" do
    it{ should have_many(:game_questions) } 
  end
  
end
