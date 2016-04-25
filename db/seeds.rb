Restaurant.destroy_all
Review.destroy_all

res1 = Restaurant.create(name: "Sandy's Kitchen", address: "45 Maple Leaf Drive", photo_url: "http://www.jerryfotography.com/wp-content/uploads/2014/04/1054-WM-500x348.jpg")
res2 = Restaurant.create(name: "Fancy Place", address: "23 Beverly Hills Road", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR8GOMfRl5i6r0LVBt9JAZyV6wVMhY-UDx5HB7a2afmsUSBpF0h")
res3 = Restaurant.create(name: "Sushi & Seafood Buffet", address: "40 Everywhere Drive", photo_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR8GOMfRl5i6r0LVBt9JAZyV6wVMhY-UDx5HB7a2afmsUSBpF0h")
res4 = Restaurant.create(name: "Mi Lindo Peru", address: "123 Somewhere SF", photo_url: "http://www.latinlife.com/media/tinymce-images/mi-lindo-peru-san-francisco.jpg")

Review.create(comment: "They have amazing food, nice waiters too!", restaurant: res1)
Review.create(comment: "Too expensive, food wasn't well-seasoned", restaurant: res2)
Review.create(comment: "Amazing, I ate until my shirt exploded", restaurant: res3)
Review.create(comment: "Too many people here on the weekends", restaurant: res3)
Review.create(comment: "Tastes like home (I am from Peru)", restaurant: res4)
