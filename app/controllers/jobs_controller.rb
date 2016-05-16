class JobsController < ApplicationController
	after_filter :discard_flash, only: [:create]

	def discard_flash
		flash.discard if request.xhr? 
	end

	def create
		@job = Job.new(job_params)

		respond_to do |format|
			if @job.save
				format.js{flash[:notice] = "New job created"}
			else
				format.js
			end
		end
	end

	def show 
		@job = Job.find(params[:id])
	end

	def destroy 
		Job.find(params[:id]).delete
		redirect_to :back
	end 

	def update 
	end 

	private 

	def job_params
		params.require(:job).permit(:boat_id, :name,:origin, :destination, :cost, :containers_reqd, :body, :progress )
	end
end
