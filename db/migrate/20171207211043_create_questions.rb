class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :external_id
      t.string :title
      t.string :category
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :answer
      t.timestamps
    end
  end
end
