class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :proccesses, presence: true
  validates :description, presence: true
  validates :categories, presence: true
  validates :displayname, presence: true, format: { with: /\A[a-z0-9]+\z/,
    message: "no CAPS, spaces, or symbols allowed", uniqueness: true} 
  validates :thumbnail, presence: true


  has_many :project_categories
  has_many :categories, through: :project_categories

  has_attached_file :thumbnail, :styles => { :medium => "400x400>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/
end
