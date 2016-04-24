class Land < ActiveRecord::Base
	validates :number, presence:true
  validates :surface, presence: true
 	validates :address, presence: true
  
  validates :city_id, presence: true
  validates :citysearch, presence: true
  validates :file, presence:true

  belongs_to :city
  belongs_to :neighborhood
  belongs_to :citysearch

  	geocoded_by :full_street_address
  	after_validation :geocode, if: :address_changed?

  	def self.import(file)
	    CSV.foreach(file.path, headers: true) do |row|
	      Land.create! row.to_hash
	    end
  	end

  	def full_street_address
    	[address, city.name].compact.join(', ')
  	end


end
