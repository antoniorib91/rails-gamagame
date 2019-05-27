class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :token, null: false
      t.index :token
      t.integer :score

      t.timestamps
    end
  end
end
