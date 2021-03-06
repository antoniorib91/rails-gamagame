require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the GamagameHelper. For example:
#
# describe GamagameHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe GamagameHelper, type: :helper do
#   pending "add some examples to (or delete) #{__FILE__}"

  describe "#label_field" do
    
    subject { helper.label_field(1) } 
    
    it "should return string" do
      match_str = "<label for=\"game_question_selected_answer_1\" class=\"custom-radio\"></label>"
      expect(subject).to eq match_str
    end      
  end
  
end
