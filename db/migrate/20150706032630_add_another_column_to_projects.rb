class AddAnotherColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :is_slide, :boolean
  end
end
