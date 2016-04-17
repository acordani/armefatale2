class LandsController < ApplicationController
	before_action :set_land, only: [:show, :destroy]
	def index
    	@lands = Land.all
    	@lands = @lands.where(citysearch: params[:citysearch]) if params["citysearch"].present?
    	@lands = @lands.where(neighborhood: params[:neighborhood]) if params["neighborhood"].present?
    	@lands = @lands.where("surface >= ?", params[:min_surface]) if params["min_surface"].present?
    	@lands = @lands.where("surface <= ?", params[:max_surface]) if params["max_surface"].present?	
	end

	def home
	end

	def show
		@hash = Gmaps4rails.build_markers(@lands) do |land, marker|
      		marker.lat land.latitude
      		marker.lng land.longitude
		end
	end

	def new
	end

	def create
	end

	def destroy
		@land.destroy
      	redirect_to lands_path
	end

	def import
  		Land.import(params[:file])
  		redirect_to lands_path, notice: "Les parcelles ont été ajoutées !!"
  	end

	private

  	def set_land
    	@land = Land.find(params[:id])
  	end

  	def land_params
    	params.require(:land).permit(:number, :surface, :address, :neighborhood_id, :city_id, :citysearch_id, :latitude, :longitude, :file)
  	end
end
