class Neighborhood < ActiveRecord::Base

	belongs_to :city
	belongs_to :citysearch
	has_many :lands
end
