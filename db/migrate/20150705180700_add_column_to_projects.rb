class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :displayname, :string
  end
end
