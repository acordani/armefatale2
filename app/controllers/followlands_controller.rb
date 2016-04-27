class FollowlandsController < ApplicationController
	before_action :set_land

	def create
		@followland = Followland.new(followland_params)
		@followland.land = @land
		@followland.user = current_user
			if @followland.save
				redirect_to land_path(@land)
			else
				render:show
			end
	end

	private

	def set_land
		@land = Land.find(params[:land_id])
	end

	def followland_params
		params.require(:followland).permit(:comment)
	end
end
