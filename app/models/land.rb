class Land < ActiveRecord::Base
	validates :number, presence:true
  	validates :surface, presence: true
 	validates :address, presence: true
  	validates :neighborhood, presence: true
  	validates :city, presence: true
  	validates :citysearch, presence: true
  	validates :file, presence:true
end
