class Project < ActiveRecord::Base
  validates :name, presence: true,
  validates :proccesses, presence: true,
  validates :description, presence: true,
  validates :categories, presence: true,

  has_many :project_categories
  has_many :categories, through: :project_categories
end
