class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many :project_categories
  has_many :projects, through: :project_categories
end
