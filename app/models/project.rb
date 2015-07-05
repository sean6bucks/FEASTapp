class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :proccesses, presence: true
  validates :description, presence: true
  validates :categories, presence: true
  validates :displayname, presence: true, format: { with: /\A[a-z0-9]+\z/,
    message: "no CAPS, spaces, or symbols allowed", uniqueness: true} 


  has_many :project_categories
  has_many :categories, through: :project_categories
end
