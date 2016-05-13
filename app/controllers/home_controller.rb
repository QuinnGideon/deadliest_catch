class HomeController < ApplicationController
	def index

	end

	def show
		@user = User.find(params[:id])
		@boats = @user.boats
	end
	
end