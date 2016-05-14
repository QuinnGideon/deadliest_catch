class HomeController < ApplicationController
	def index

	end

	def show
		@user = User.find(params[:id])
		@boats = @user.boats
		@job = Job.new
	end
	
end