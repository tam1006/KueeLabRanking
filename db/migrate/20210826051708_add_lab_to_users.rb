class AddLabToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lab, :string
  end
end
