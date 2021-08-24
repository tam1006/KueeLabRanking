class Grade < ApplicationRecord
  validates :score, presence: true, numericality: {
    only_integer: true, in: 0..122
  }
end
