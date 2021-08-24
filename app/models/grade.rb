class Grade < ApplicationRecord
  has_one :score, dependent: :destroy
  accepts_nested_attributes_for :score
end
