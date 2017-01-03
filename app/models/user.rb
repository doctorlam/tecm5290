class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  has_many :lessons, dependent: :destroy 
   has_many :projects, dependent: :destroy 
   has_many :abouts, dependent: :destroy
   has_many :submissions, dependent: :destroy
   has_attached_file :avatar, :styles => { :medium => "150x150>", :thumb => "30x30" }, :default_url => "missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  acts_as_commontator
  has_many :posts, dependent: :destroy
  has_many :responses, dependent: :destroy
  has_many :presentations, dependent: :destroy


end
