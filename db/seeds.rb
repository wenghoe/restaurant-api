
# 5 Restaurants
rest1 = Restaurant.create(name: 'Restaurant Ay')
rest2 = Restaurant.create(name: 'Restaurant Be')
rest3 = Restaurant.create(name: 'Restaurant Ce')
rest4 = Restaurant.create(name: 'Restaurant De')
rest5 = Restaurant.create(name: 'Restaurant Ey')

# 10 Dishes
dish1 = Dish.create(name: 'Fried Fish')
dish1.restaurants << rest1
dish1.save

dish2 = Dish.create(name: 'Chicken Rice')
dish2.restaurants << rest1
dish2.restaurants << rest2
dish2.save

dish3 = Dish.create(name: 'Mutton Curry')
dish3.restaurants << rest2
dish3.restaurants << rest3
dish3.restaurants << rest4
dish3.save

dish4 = Dish.create(name: 'Roasted Duck')
dish4.restaurants << rest1
dish4.restaurants << rest3
dish4.restaurants << rest4
dish4.save

dish5 = Dish.create(name: 'Honey Jelly')
dish5.restaurants << rest2
dish5.restaurants << rest4
dish5.restaurants << rest5
dish5.save

dish6 = Dish.create(name: 'Mushroom Soup')
dish6.restaurants << rest3
dish6.restaurants << rest4
dish6.save

dish7 = Dish.create(name: 'Steamed Fish')
dish7.restaurants << rest2
dish7.restaurants << rest4
dish7.save

dish8 = Dish.create(name: 'Crispy Fish')
dish8.restaurants << rest1
dish8.restaurants << rest3
dish8.save

dish9 = Dish.create(name: 'Fillet Fish')
dish9.restaurants << rest1
dish9.restaurants << rest4
dish9.save

dish10 = Dish.create(name: 'Mixed Vegetables')
dish10.restaurants << rest3
dish10.restaurants << rest4
dish10.restaurants << rest5
dish10.save
