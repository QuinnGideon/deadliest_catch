class BoatsController < ApplicationController
	def create 
		@boat = Boat.new(boat_params)
		@boat.save
	end

	def new
		@boat = Boat.new
	end

	def update
	end

	def destroy
		boat = Boat.find(params[:id])
		user = User.find(boat.user_id)
		boat.delete
		redirect_to owner_path(user)
	end 

	private 

	def boat_params 
		params.require(:boat).permit(:user_id, :name, :capacity, :location)
	end

end
