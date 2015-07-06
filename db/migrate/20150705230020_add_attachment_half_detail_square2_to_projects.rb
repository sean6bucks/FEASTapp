class AddAttachmentHalfDetailSquare2ToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :half_detail_square2
    end
  end

  def self.down
    remove_attachment :projects, :half_detail_square2
  end
end
