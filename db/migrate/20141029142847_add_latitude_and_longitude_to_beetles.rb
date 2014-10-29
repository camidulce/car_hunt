class AddLatitudeAndLongitudeToBeetles < ActiveRecord::Migration
  def change
    add_column :beetles, :latitude, :float
    add_column :beetles, :longitude, :float
  end
end
