class RemoveEFromGrades < ActiveRecord::Migration[6.1]
  def change
    remove_column :grades, :E, :integer
  end
end
