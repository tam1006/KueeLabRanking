class AddGradeidToScores < ActiveRecord::Migration[6.1]
  def change
    add_column :scores, :grade_id, :integer
  end
end
