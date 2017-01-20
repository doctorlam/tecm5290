class AddAttachmentAttachmentToTutorials < ActiveRecord::Migration
  def self.up
    change_table :tutorials do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :tutorials, :attachment
  end
end
