Category.destroy_all
Restaurant.destroy_all
Review.destroy_all
Rating.destroy_all
User.destroy_all

cat1 = Category.create(category: "Fast Food")
cat2 = Category.create(category: "Ethnic")
cat3 = Category.create(category: "Casual Dining")
cat4 = Category.create(category: "Fast Casual")
cat5 = Category.create(category: "Fine Dining")
cat6 = Category.create(category: "Coffeehouse")
cat7 = Category.create(category: "Pancake House")
cat8 = Category.create(category: "Food Truck")

res1 = Restaurant.create(name: "McDonald's", address: "45 Maple Leaf Drive", photo_url: "http://www.modular.org/marketing/images/modularadvantage/McDonalds-Longton-ModularBuilding.jpg", category: cat1)
res2 = Restaurant.create(name: "Fancy Place", address: "23 Beverly Hills Road", photo_url: "http://satedepicure.com/wp-content/uploads/2010/10/DSCF8051.jpg", category: cat5)
res3 = Restaurant.create(name: "Chipotle", address: "40 Everywhere Drive", photo_url: "http://www.yorkbuilding.com/wp-content/uploads/Chipotle1.jpg", category: cat4)
res4 = Restaurant.create(name: "Mi Lindo Peru", address: "123 Somewhere SF", photo_url: "http://www.latinlife.com/media/tinymce-images/mi-lindo-peru-san-francisco.jpg", category: cat2)
res5 = Restaurant.create(name: "IHOP", address: "78 Everywhere Lane", photo_url: "https://cdn.muscleandstrength.com/sites/default/files/images/articles/best-muscle-building-meals-chain-restaurants-ihop.jpg", category: cat7)
res6 = Restaurant.create(name: "Applebees", address: "23 Beesting Lane", photo_url: "http://www.restaurantnews.com/wp-content/uploads/2015/11/Applebees-Recognizes-Top-Performing-Franchisee-And-Vendor-at-2015-National-Conference.jpg", category: cat3)
res7 = Restaurant.create(name: "Pegasus Coffee", address: "90 Seattle Somewhere Road", photo_url: "http://4.bp.blogspot.com/-iMpGZ7t_KF4/T0wK0cOOCDI/AAAAAAAAFps/FuaILBTLlUw/s640/IMG_8012.JPG", category: cat6)
res8 = Restaurant.create(name: "Street Sweets", address: "150 NewYorkish Drive", photo_url: "http://wp.streetwise.co/wp-content/uploads//2014/09/unnamed-213.jpg", category: cat8)

Review.create(comment: "They have amazing food, nice waiters too!", restaurant: res1)
Review.create(comment: "Too expensive, food wasn't well-seasoned", restaurant: res2)
Review.create(comment: "Amazing, I ate until my shirt exploded", restaurant: res3)
Review.create(comment: "Too many people here on the weekends", restaurant: res3)
Review.create(comment: "Tastes like home (I am from Peru)", restaurant: res4)

# suggest creating data that's a bit more random (e.g. picking a random number between
# 1 and 10 for each rating.... here's an example of how I might more easily generate
# a bunch of random reviews:
Restaurant.all.each do |current_restaurant|
  num_times = rand(20)
  num_times.times do
    Rating.create(value: rand(10), restaurant: current_restaurant)
  end
end

Rating.create(value: 5.5, restaurant: res1)
Rating.create(value: 5.5, restaurant: res2)
Rating.create(value: 5.5, restaurant: res3)
Rating.create(value: 5.5, restaurant: res4)
Rating.create(value: 5.5, restaurant: res5)
Rating.create(value: 5.5, restaurant: res6)
Rating.create(value: 5.5, restaurant: res7)
Rating.create(value: 5.5, restaurant: res8)
