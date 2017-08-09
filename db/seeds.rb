# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Sale.destroy_all
Item.destroy_all
User.destroy_all


user = User.create!(email: 'amy.dyson@mac.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '13162 Capstone Drive', city: 'San Diego', state: 'California', zip: '92130', date: "2017-09-14", time: "8-11am", description: 'Moving soon and everything must go.', user_id: user.id )

item = Item.new(item_name: 'Shoes', item_description: 'Barely used brown Dansko clogs', price: '$25', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/dankso.jpg")
item.save

item = Item.new(item_name: 'Shoes', item_description: 'Gucci mules', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/gucciShoes.jpg")
item.save



user = User.create!(email: 'sharmila@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '704 J Street', city: 'San Diego', state: 'California', zip: '92101', date: "2017-09-25", time: "9-noon", description: 'Power tools and more!', user_id: user.id )


item = Item.new(item_name: 'Saw', item_description: 'Power saw from Home Depot', price: '$60', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/saw.jpg")
item.save

item = Item.new(item_name: 'Sander', item_description: 'Deck XP', price: '$75', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/sander.jpg")
item.save


item = Item.new(item_name: 'Comfy chair', item_description: 'Plush red chair', price: '$105', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/redchair.jpg")
item.save





user = User.create!(email: 'rithy@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '4711 Timberline Drive', city: 'Austin', state: 'Texas', zip: '78746', date: "2017-10-14", time: "7-10am",  description: 'Furniture, clothes and more!', user_id: user.id )


item = Item.new(item_name: 'Large sectional couch', item_description: 'Beautiful and comfortable L-shaped blue couch', price: '$499 or best offer', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couchsectional.jpg")
item.save


item = Item.new(item_name: 'Set of padded blue desk chairs', item_description: 'Set of 4 blue desk chairs for office', price: 'A steal at $399', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/bluechair.jpg")
item.save

item = Item.new(item_name: 'Running shoes', item_description: 'Womens size 7 black Nike running shoes', price: 'A steal at $29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/blacknike.jpg")
item.save


user = User.create!(email: 'rob@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '1533 S Main Street', city: 'Winston-Salem', state: 'North Carolina', zip: '27127', date: "2017-11-14", time: "2-4pm", description: 'Cute clothes and other items', user_id: user.id )

item = Item.new(item_name: 'Overalls', item_description: 'Black Madewell overalls size extra small', price: '$49', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/overallsxs.jpg")
item.save

item = Item.new(item_name: 'Patio furniture', item_description: 'Table and 6 chairs, beige fabric', price: '$49', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/patiofurniture.jpg")
item.save

item = Item.new(item_name: 'Russian dolls', item_description: 'Nested Russian dolls', price: '$29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/russiandolls.jpg")
item.save

item = Item.new(item_name: 'Yellow couch', item_description: 'Low back couch with classic yellow fabric', price: '$29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/yellowcouch.jpg")
item.save


user = User.create!(email: 'joe@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '22 Merrill Rd', city: 'Freeport', state: 'Maine', zip: '04032', date: "2017-10-22", time: '9-noon', description: 'Sports equipment, golf clubs and more', user_id: user.id )

item = Item.new(item_name: 'Golf clubs', item_description: 'Great clubs barely used', price: '$51', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/golfclubs.jpg")
item.save

item = Item.new(item_name: 'Bookcase for girls room', item_description: 'Pottery Barn white bookcase', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/girlsbookcase.jpg")
item.save

item = Item.new(item_name: 'Baseball bat', item_description: 'Easton brand', price: '$49', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/baseballbat.jpg")
item.save



p "Created #{User.count} users"
p "Created #{Sale.count} sales"
p "Created #{Item.count} items"



