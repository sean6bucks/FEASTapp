class Project < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :proccesses, presence: true
  validates :description, presence: true
  validates :categories, presence: true
  validates :displayname, presence: true, format: { with: /\A[a-z0-9]+\z/,
    message: "no CAPS, spaces, or symbols allowed", uniqueness: true} 
  validates :thumbnail, presence: true
  validates :jumbotron, presence: true


  has_many :project_categories
  has_many :categories, through: :project_categories

# Thumbnail Image
  has_attached_file :thumbnail, :styles => { :medium => "400x400>", :preview => "100x100>" }, :default_url => ":style/missing.jpeg"
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/

# Jumbotron Image
  has_attached_file :jumbotron, :styles => { :jumbotron => "1200x720>", :preview => "600x360>" }, :default_url => ":style/missingjumbotron.jpeg"
  validates_attachment_content_type :jumbotron, :content_type => /\Aimage\/.*\Z/

# Jumbotron Detail Images
  has_attached_file :jumbotron_detail, :styles => { :jumbotron_detail => "1200x720>", :preview => "600x360>" }, :default_url => ":style/missingjumbotron.jpeg"
  validates_attachment_content_type :jumbotron_detail, :content_type => /\Aimage\/.*\Z/

# Two Half Width Detail Images
  has_attached_file :half_detail1, :styles => { :half_detail1 => "600x720>", :preview => "300x360>" }, :default_url => ":style/missingHalfDetail.jpeg"
  validates_attachment_content_type :half_detail1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :half_detail2, :styles => { :half_detail2 => "600x720>", :preview => "300x360>" }, :default_url => ":style/missingHalfDetail.jpeg"
  validates_attachment_content_type :half_detail2, :content_type => /\Aimage\/.*\Z/

# Two Half Width Square Detail Images
  has_attached_file :half_detail_square1, :styles => { :half_detail_square1 => "600x600>", :preview => "300x300>" }, :default_url => ":style/missingHalfDetailSquare.jpeg"
  validates_attachment_content_type :half_detail_square1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :half_detail_square2, :styles => { :half_detail_square2 => "600x600>", :preview => "300x300>" }, :default_url => ":style/missingHalfDetailSquare.jpeg"
  validates_attachment_content_type :half_detail_square2, :content_type => /\Aimage\/.*\Z/

# Third Width Detail Images
  has_attached_file :thirds_detail1, :styles => { :thirds_detail1 => "400x600>", :preview => "600x360>" }, :default_url => ":style/missingjumbotron.jpeg"
  validates_attachment_content_type :thirds_detail1, :content_type => /\Aimage\/.*\Z/
  has_attached_file :thirds_detail2, :styles => { :thirds_detail2 => "400x600>", :preview => "600x360>" }, :default_url => ":style/missingjumbotron.jpeg"
  validates_attachment_content_type :thirds_detail2, :content_type => /\Aimage\/.*\Z/
  has_attached_file :thirds_detail3, :styles => { :thirds_detail3 => "400x600>", :preview => "600x360>" }, :default_url => ":style/missingjumbotron.jpeg"
  validates_attachment_content_type :thirds_detail3, :content_type => /\Aimage\/.*\Z/

  scope :published, -> { where(is_published: true)}

end
