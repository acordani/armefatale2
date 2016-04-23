# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



city_attributes = [
	{
		name:       "94100 Saint-Maur-Des-Fossés",

	},

	{
		name:       "94170 Le Perreux Sur Marne"
	}
]

citysearch_attributes = [
	{
		name:       "Saint-Maur-Des-Fossés",

	},

	{
		name:       "Le Perreux Sur Marne"
	}
]

neighborhood_attributes = [
	{
		name:       "Saint-Maur-Des-Fossés",

	},

	{
		name:       "Le Perreux Sur Marne"
	}
]



city_attributes.each { |params| City.create!(params) }
citysearch_attributes.each { |params| Citysearch.create!(params) }


