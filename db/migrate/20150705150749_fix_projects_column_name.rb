class FixProjectsColumnName < ActiveRecord::Migration
  def change
    rename_column :projects, :is_publishes, :is_published
  end
end
