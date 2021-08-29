class AddTotalCreditToGrades < ActiveRecord::Migration[6.1]
  def change
    add_column :grades, :total_credit, :integer
  end
end
