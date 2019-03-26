# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

JSON_PATHS = ["db/response1.json", "db/response2.json", "db/response3.json", "db/response4.json"]

JSON_PATHS.each do |json_path|

  json = File.read(json_path)
  hash = JSON.parse(json)
  hash["businesses"].each do |restaurant|
    name = restaurant["name"]
    food_type = FoodType.find_or_create_by(name: "#{restaurant["categories"][0]["title"]}")
    if restaurant["location"]["address1"] == "" || restaurant["location"]["address1"] == nil
      address = "Food Truck"
    else
      if restaurant["location"]["address2"] != "" || restaurant["location"]["address2"] != nil
        address = "#{restaurant["location"]["address1"]} #{restaurant["location"]["address2"]}"
      else
        address = restaurant["location"]["address1"]
      end
    end
    if restaurant["price"] == nil
      price = 0
    else
      price = restaurant["price"].size.to_i
    end
    spot = Restaurant.new(name: name, address: address, price_range: price, food_type: food_type)
    if spot.valid?
      spot.save
    end
  end
end
