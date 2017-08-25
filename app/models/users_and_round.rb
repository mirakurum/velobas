class UsersAndRound < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :round, foreign_key: :round_id
end
