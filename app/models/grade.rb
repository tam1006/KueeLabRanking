class Grade < ApplicationRecord
  validates :AA, :A, :B, :C, :D, :E, :F, presence: true, numericality: {
    greater_than_or_equal_to: 0, less_than_or_equal_to: 122
  }
end
