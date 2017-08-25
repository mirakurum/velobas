class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
  has_many :users_and_rounds
  has_many :rounds, through: :users_and_rounds
end
