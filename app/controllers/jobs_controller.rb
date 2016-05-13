class JobsController < ApplicationController
	def create
	end

	def destroy 
		Job.find(params[:id]).delete
		redirect_to :back
	end 

	def update 
	end 
end
