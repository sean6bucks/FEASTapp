class AddAttachmentJumbotronToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :jumbotron
    end
  end

  def self.down
    remove_attachment :projects, :jumbotron
  end
end
