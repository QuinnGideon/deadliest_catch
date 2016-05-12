class Job < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :body, length: {minimum: 50}

	validates :cost, presence: true 

	belongs_to :boat
	belongs_to :user
end
