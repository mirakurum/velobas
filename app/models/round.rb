class Round < ApplicationRecord
  validates :place, :start, :end, presence: true
  has_many :users_and_rounds
  has_many :users, through: :users_and_rounds
end
