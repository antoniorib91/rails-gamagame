require 'rails_helper'

RSpec.describe GameQuestion, type: :model do
  context "#associations" do
    
    [:game, :question].each { |association| 
      it { should belong_to(association) }
    }
  end
  
end
