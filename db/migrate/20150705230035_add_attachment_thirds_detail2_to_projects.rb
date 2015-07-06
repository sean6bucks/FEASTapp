class AddAttachmentThirdsDetail2ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :thirds_detail2
    end
  end

  def self.down
    remove_attachment :projects, :thirds_detail2
  end
end
