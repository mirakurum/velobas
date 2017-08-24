class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :total_score
      t.integer :dist_goal
      t.integer :close_goal
      t.float :play_time
      t.string :achievement

      t.timestamps
    end
  end
end
