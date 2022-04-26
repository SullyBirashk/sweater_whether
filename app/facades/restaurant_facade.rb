class RestaurantFacade

 def self.find_restaurants(category, location)
   data = RestaurantService.get_nearby(category, location)

   Restaurant.new(data[:businesses][0])
 end
end
