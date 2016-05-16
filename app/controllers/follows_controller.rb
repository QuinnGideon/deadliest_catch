class FollowsController < ApplicationController

	def create
		@follow = Follow.new(follow_params)

		respond_to do |format|
			if @follow.save
				format.js
			else
				format.js
			end
		end
	end

	def destroy
		@follow = Follow.find(params[:id])
		@boat = @follow.user_id
		@follow.delete
	end

	private 

	def follow_params
		params.require(:follow).permit(:user_id, :boat_id)
	end
end
