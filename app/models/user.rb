class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true

  has_many :users_and_rounds, inverse_of: :user
  has_many :rounds, through: :users_and_rounds

  accepts_nested_attributes_for :rounds
  accepts_nested_attributes_for :users_and_rounds, :allow_destroy => true
end
