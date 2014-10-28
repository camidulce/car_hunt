class RemoveTypeFromBeetles < ActiveRecord::Migration
  def change
    remove_column :beetles, :type, :string
  end
end
