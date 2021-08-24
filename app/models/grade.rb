class Grade < ApplicationRecord
  validates :AA, :A, :B, :C, :D, :E, :F , presence: true, numericality: {
    only_integer: true, in: 0..122
  }
end
