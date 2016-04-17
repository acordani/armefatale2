class LandsController < ApplicationController
	before_action :set_land, only: [:show, :destroy]
	def index
		@lands = Land.all
	end

	def new
	end

	def create
	end

	def destroy
		@land.destroy
      	redirect_to lands_path
	end

	private

  	def set_land
    @land = Land.find(params[:id])
  	end

  	def land_params
    params.require(:land).permit(:number, :surface, :address, :neighborhood, :city, :citysearch :latitude, :longitude, :file)
  	end
end
