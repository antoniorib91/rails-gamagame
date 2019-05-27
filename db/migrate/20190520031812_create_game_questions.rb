class CreateGameQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :game_questions do |t|
      t.references :game, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :order_number
      t.string :selected_answer
      t.boolean :is_correct

      t.timestamps
    end
  end
end
