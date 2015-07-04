class ProjectCategory < ActiveRecord::Base
  has_many :projects
  has_many :categories
end
