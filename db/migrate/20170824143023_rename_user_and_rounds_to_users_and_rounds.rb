class RenameUserAndRoundsToUsersAndRounds < ActiveRecord::Migration[5.1]
  def change
    rename_table :user_and_rounds, :users_and_rounds
  end
end
