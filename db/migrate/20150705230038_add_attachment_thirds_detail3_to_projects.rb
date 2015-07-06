class AddAttachmentThirdsDetail3ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :thirds_detail3
    end
  end

  def self.down
    remove_attachment :projects, :thirds_detail3
  end
end
