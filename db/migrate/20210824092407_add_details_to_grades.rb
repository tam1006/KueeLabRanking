class AddDetailsToGrades < ActiveRecord::Migration[6.1]
  def change
    add_column :grades, :AA, :integer
    add_column :grades, :A, :integer
    add_column :grades, :B, :integer
    add_column :grades, :C, :integer
    add_column :grades, :D, :integer
    add_column :grades, :E, :integer
    add_column :grades, :F, :integer
  end
end
