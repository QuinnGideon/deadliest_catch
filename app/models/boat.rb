class Boat < ActiveRecord::Base

	validates :name, presence: true
	validates :name, length: {minimum: 3, maximum: 50}
	validates :name, uniqueness: true

	has_many :jobs
	belongs_to :user
	has_many :follows

	has_attached_file :avatar,:default_url => "/assets/boat_icon.png"
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
