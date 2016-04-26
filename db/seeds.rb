Category.destroy_all
Restaurant.destroy_all
Review.destroy_all

cat1 = Category.create(category: "Fast Food")
cat2 = Category.create(category: "Ethnic")
cat3 = Category.create(category: "Casual Dining")
cat4 = Category.create(category: "Fast Casual")
cat5 = Category.create(category: "Fine Dining")
cat6 = Category.create(category: "Coffeehouse")
cat7 = Category.create(category: "Pancake House")
cat8 = Category.create(category: "Food Truck")

res1 = Restaurant.create(name: "McDonald's", address: "45 Maple Leaf Drive", photo_url: "http://www.modular.org/marketing/images/modularadvantage/McDonalds-Longton-ModularBuilding.jpg", category: cat1)
res2 = Restaurant.create(name: "Fancy Place", address: "23 Beverly Hills Road", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR8GOMfRl5i6r0LVBt9JAZyV6wVMhY-UDx5HB7a2afmsUSBpF0h", category: cat5)
res3 = Restaurant.create(name: "Chipotle", address: "40 Everywhere Drive", photo_url: "http://www.yorkbuilding.com/wp-content/uploads/Chipotle1.jpg", category: cat4)
res4 = Restaurant.create(name: "Mi Lindo Peru", address: "123 Somewhere SF", photo_url: "http://www.latinlife.com/media/tinymce-images/mi-lindo-peru-san-francisco.jpg", category: cat2)
res5 = Restaurant.create(name: "IHOP", address: "78 Everywhere Lane", photo_url: "https://c2.staticflickr.com/4/3887/15079362747_5937d5f757_o.jpg", category: cat7)
res6 = Restaurant.create(name: "Applebees", address: "23 Beesting Lane", photo_url: "http://www.restaurantnews.com/wp-content/uploads/2015/11/Applebees-Recognizes-Top-Performing-Franchisee-And-Vendor-at-2015-National-Conference.jpg", category: cat3)
res6 = Restaurant.create(name: "Pegasus Coffee", address: "90 Seattle Somewhere Road", photo_url: "http://4.bp.blogspot.com/-iMpGZ7t_KF4/T0wK0cOOCDI/AAAAAAAAFps/FuaILBTLlUw/s640/IMG_8012.JPG", category: cat6)
res6 = Restaurant.create(name: "Street Sweets", address: "150 NewYorkish Drive", photo_url: "http://www.jazzhostels.com/blog/wp-content/uploads/2015/10/New-York-City-Food-Truck.png", category: cat8)

Review.create(comment: "They have amazing food, nice waiters too!", restaurant: res1)
Review.create(comment: "Too expensive, food wasn't well-seasoned", restaurant: res2)
Review.create(comment: "Amazing, I ate until my shirt exploded", restaurant: res3)
Review.create(comment: "Too many people here on the weekends", restaurant: res3)
Review.create(comment: "Tastes like home (I am from Peru)", restaurant: res4)
