class AddAttachmentHalfDetail2ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :half_detail2
    end
  end

  def self.down
    remove_attachment :projects, :half_detail2
  end
end
