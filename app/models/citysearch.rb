class Citysearch < ActiveRecord::Base
	has_many :orders
	has_many :neighborhoods
	has_many :lands
	belongs_to :user
end
