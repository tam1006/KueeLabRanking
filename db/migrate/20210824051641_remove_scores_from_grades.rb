class RemoveScoresFromGrades < ActiveRecord::Migration[6.1]
  def change
    remove_column :grades, :scores, :integer
  end
end
