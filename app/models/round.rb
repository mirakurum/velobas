class Round < ApplicationRecord
  validates :place, :start, :end, presence: true

  has_many :users_and_rounds, inverse_of: :round
  has_many :users, through: :users_and_rounds

  accepts_nested_attributes_for :users
  accepts_nested_attributes_for :users_and_rounds, :allow_destroy => true
end
