class Boat < ActiveRecord::Base

	validates :name, presence: true
	validates :name, length: {minimum: 3, maximum: 50}
	validates :name, uniqueness: true

end
