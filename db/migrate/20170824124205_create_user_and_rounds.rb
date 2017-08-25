class CreateUserAndRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :user_and_rounds do |t|
      t.references :user, foreign_key: true
      t.references :round, foreign_key: true
      t.string :score_after30
      t.string :score_before30

      t.timestamps
    end
  end
end
