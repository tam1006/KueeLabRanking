class AddDetailsToScores < ActiveRecord::Migration[6.1]
  def change
    add_column :scores, :AA, :integer
    add_column :scores, :A, :integer
    add_column :scores, :B, :integer
    add_column :scores, :C, :integer
    add_column :scores, :D, :integer
    add_column :scores, :E, :integer
    add_column :scores, :F, :integer
  end
end
