class Job < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true

	validates :cost, presence: true 
	
end
