class Grade < ApplicationRecord
  belongs_to :user
  validates :AA, :A, :B, :C, :D, :F, presence: true, numericality: {
    greater_than_or_equal_to: 0, less_than_or_equal_to: 122
  }
end
