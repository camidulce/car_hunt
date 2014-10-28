class CreateBeetles < ActiveRecord::Migration
  def change
    create_table :beetles do |t|
      t.string :nickname
      t.string :zip
      t.string :type
      t.date :year
      t.string :color
      t.string :engine
      t.string :interior
      t.string :picture

      t.timestamps
    end
  end
end
