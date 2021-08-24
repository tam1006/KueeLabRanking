class CreateGrades < ActiveRecord::Migration[6.1]
  def change
    create_table :grades do |t|
      t.string :lecture
      t.float :GPA
      t.integer :scores

      t.timestamps
    end
  end
end
