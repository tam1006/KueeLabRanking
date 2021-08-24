class AddUserIdToGrades < ActiveRecord::Migration[6.1]
  def change
    add_column :grades, :user_id, :integer
  end
end
