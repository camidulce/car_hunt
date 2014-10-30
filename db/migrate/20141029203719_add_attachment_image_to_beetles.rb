class AddAttachmentImageToBeetles < ActiveRecord::Migration
  def self.up
    change_table :beetles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :beetles, :image
  end
end
