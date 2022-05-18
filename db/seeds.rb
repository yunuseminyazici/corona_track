# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Covid.destroy_all
Covid.destroy_all.id

require 'faraday'
require 'json'

url = 'https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query?where=1%3D1&outFields=death_rate,cases7_per_100k,cases7_bl_per_100k,GEN,BEZ&returnGeometry=false&outSR=193&f=json'
response = Faraday.get(url, {a: 1}, {'Accept' => 'application/json'})
json_objects = JSON.parse(response.body)
json2=json_objects['features']

411.times do |index|
	json=json2[index]['attributes']
	#puts json_object['GEN']
	new_covid = Covid.create(
		GEN: json['GEN'],
		BEN: json['BEZ'],
		death_rate: json['death_rate'],
		cases7_per_100k: json['cases7_per_100k'],
		cases7_bl_per_100k: json['cases7_bl_per_100k'],
		)
end


