module RestaurantsHelper

## ------------------------- PHOTO URLs -------------------------- ##
  @@american_food_photos = [
    "https://images.unsplash.com/photo-1535381987-2075e3077deb?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=334&amp;q=80 334w",
    "https://images.unsplash.com/photo-1515669097368-22e68427d265?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1489391013510-49401c8a3b6c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1517984055083-fd6e1e788e54?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1475474369946-72bb667aae19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=640&q=80"
  ]

  @@asian_food_photos = [
    "https://images.unsplash.com/photo-1503764654157-72d979d9af2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80",
    "https://images.unsplash.com/photo-1498654896293-37aacf113fd9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1532347231146-80afc9e3df2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=632&q=80",
    "https://images.unsplash.com/photo-1534256958597-7fe685cbd745?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
    "https://images.unsplash.com/photo-1528510138849-786a5feddf94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  ]

  @@bakeries_photos = [
    "https://images.unsplash.com/photo-1454641350786-bc31a1997ba9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1551500693-f3e9e7842948?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1491778589563-419a091ecd26?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1549571448-958194cb23cb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1525904971217-668a1229f701?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  ]

  @@food_truck_photos = [
    "https://images.unsplash.com/photo-1509315811345-672d83ef2fbc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1519861155730-0b5fbf0dd889?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=863&q=80",
    "https://images.unsplash.com/photo-1513640127641-49ba81f8305c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1530649325239-1c2ebf1e3f07?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/reserve/DHHQbqc0RrWVf0uDNe5E_The%20Litte%20Cafe.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80"
  ]

  @@italian_food_photos = [
    "https://images.unsplash.com/photo-1534649643822-e7431de08af6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=679&q=80",
    "https://images.unsplash.com/photo-1536964549204-cce9eab227bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1505932049984-db368d92fa63?ixlib=rb-1.2.1&auto=format&fit=crop&w=676&q=80",
    "https://images.unsplash.com/photo-1522666257812-173fdc2d11fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1516100882582-96c3a05fe590?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  ]

  @@mexican_food_photos = [
    "https://images.unsplash.com/photo-1536792058-e4c673a9c11f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1504544750208-dc0358e63f7f?ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1464219222984-216ebffaaf85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjUwOTAwfQ&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1513456852971-30c0b8199d4d?ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80",
    "https://images.unsplash.com/photo-1536791985-e156f3dbbb9c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
  ]

  @@bar_photos = [
    "https://images.unsplash.com/photo-1468072114808-903e572b8ead?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=966&q=80",
    "https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1497644083578-611b798c60f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1470337458703-46ad1756a187?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80",
    "https://images.unsplash.com/photo-1491333078588-55b6733c7de6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  ]

  @@spanish_food_photos = [
    "https://images.unsplash.com/photo-1515443961218-a51367888e4b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1542904990-d60f68e9af4e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1524932326868-56e1f1ede465?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1516721049043-66daa54ed3cd?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1500482176473-ccba10e1e880?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"
  ]

  @@seafood_photos = [
    "https://images.unsplash.com/photo-1448043552756-e747b7a2b2b8?ixlib=rb-1.2.1&auto=format&fit=crop&w=949&q=80",
    "https://images.unsplash.com/photo-1542790246-93eacdb8f756?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1519708227418-c8fd9a32b7a2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1475905760530-a22eda0fb1b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1054&q=80",
    "https://images.unsplash.com/photo-1515443961218-a51367888e4b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
  ]

  @sandwich_photos = [
    "https://images.unsplash.com/photo-1485451456034-3f9391c6f769?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1528735602780-2552fd46c7af?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80",
    "https://images.unsplash.com/photo-1509722747041-616f39b57569?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1543616153-d69a13f346ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1481070414801-51fd732d7184?ixlib=rb-1.2.1&auto=format&fit=crop&w=925&q=80"
  ]

  @french_food_photos = [
    "https://images.unsplash.com/photo-1462837019796-6f0204b48d95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1414235077428-338989a2e8c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1477747219299-60f95c811fef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1464306076886-da185f6a9d05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1464500650248-1a4b45debb9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1161&q=80"
  ]

  @@misc = "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"

## ----------------------- FOOD TYPE ARRAY ----------------------- ##
  @@asian_foods = ["Korean", "Japanese", "Vietnamese", "Taiwanese", "Thai", "Poke", "Sushi Bars", "Asian Fusion", "Chinese"]

  @@american_foods = ["American (New)", "American (Traditional)", "Burgers", "Barbeque", "Hot Dogs", "Southern", "Chicken Wings"]

  @@bakeries_cafe = ["Breakfast & Brunch", "Bakeries", "Cafes", "Coffee & Tea"]

  @@food_trucks = ["Food Stands", "Street Vendors", "Food Trucks"]

  @@italian_foods = ["Pizza", "Italian"]

  @@mexican_foods = ["Mexican"]

  @@bars = ["Beer Bar", "Cocktail Bars", "Pubs", "Bars", "Sports Bars", "Beer, Wine & Spirits", "Sports Clubs"]

  @@spanish_foods = ["Tapas/Small Plates", "Argentine", "Spanish"]

  @@seafood = ["Seafood", "Seafood Markets"]

  @@sandwiches = ["Sandwiches"]

  @@french_foods = ["French"]

## ------------------------- METHOD ------------------------------ ##
    def self.fetch_photo(restaurant)
      num = rand(0..4)
      type = restaurant.food_type.name
      if @@asian_foods.include?(type)
        @@asian_food_photos[num]
      elsif @@american_foods.include?(type)
        @@american_food_photos[num]
      elsif @@bakeries_cafe.include?(type)
        @@bakeries_photos[num]
      elsif @@food_trucks.include?(type)
        @@food_truck_photos[num]
      elsif @@italian_foods.include?(type)
        @@italian_food_photos[num]
      elsif @@mexican_foods.include?(type)
        @@mexican_food_photos[num]
      elsif @@bars.include?(type)
        @@bar_photos[num]
      elsif @@spanish_foods.include?(type)
        @@spanish_food_photos[num]
      elsif @@seafood.include?(type)
        @@seafood_photos[num]
      elsif @@sandwiches.include?(type)
        @@sandwich_photos[num]
      elsif @@french_foods.include?(type)
        @@french_food_photos[num]
      else
        @@misc
      end
    end

end
