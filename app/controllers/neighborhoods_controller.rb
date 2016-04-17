class NeighborhoodsController < ApplicationController

  #def show
  # @neighborhoods = Category.find(params[:id])
  #end


  def show
   # @listings = Listing.where(neighborhoods_id: params[:id]).order("created_at DESC")
   @citysearch = Citysearch.find(params[:citysearch_id])
   @neighborhoods = Neighborhood.find(params[:id])
  end

  def find_by_city
    citysearch = Citysearch.find(params[:citysearch_id])
    neighborhoods = citysearch.neighborhoods.find_all
    render json: { neighborhoods: neighborhoods }
  end
end