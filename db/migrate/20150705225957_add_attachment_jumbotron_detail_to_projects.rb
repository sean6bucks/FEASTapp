class AddAttachmentJumbotronDetailToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :jumbotron_detail
    end
  end

  def self.down
    remove_attachment :projects, :jumbotron_detail
  end
end
