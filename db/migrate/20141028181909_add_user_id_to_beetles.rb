class AddUserIdToBeetles < ActiveRecord::Migration
  def change
    add_column :beetles, :user_id, :integer
    add_index :beetles, :user_id
  end
end
