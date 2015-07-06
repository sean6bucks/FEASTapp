class AddAttachmentThirdsDetail1ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :thirds_detail1
    end
  end

  def self.down
    remove_attachment :projects, :thirds_detail1
  end
end
