class GameQuestion < ApplicationRecord
  belongs_to :game
  belongs_to :question
  
  scope :by_game, -> (game_id) { where("game_id = #{game_id} AND selected_answer IS NULL") }
  scope :answer_null, -> { where('selected_answer IS NULL') }
  scope :order_by_number, -> { order(order_number: :asc) }
  scope :is_correct, -> { where(is_correct: true) }
end
