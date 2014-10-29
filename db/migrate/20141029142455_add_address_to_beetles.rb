class AddAddressToBeetles < ActiveRecord::Migration
  def change
    add_column :beetles, :address, :string
  end
end
