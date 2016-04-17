class City < ActiveRecord::Base

	has_many :lands
	has_many :orders
	has_many :neighborhoods
	belongs_to :user
end
