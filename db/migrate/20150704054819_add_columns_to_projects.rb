class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :proccesses, :string
    add_column :projects, :description, :string
    add_column :projects, :is_publishes, :boolean
  end
end
