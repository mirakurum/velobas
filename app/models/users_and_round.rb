class UsersAndRound < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  belongs_to :round, foreign_key: :round_id

  accepts_nested_attributes_for :user, :reject_if => :all_blank
end
