class Score < ApplicationRecord
  belongs_to :grade
  validates :score, presence: true, numericality: {
    only_integer: true, in: 0..122
  }
end
