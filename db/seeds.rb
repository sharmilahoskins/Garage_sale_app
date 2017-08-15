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

user = User.create!(email: 'amy@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')
user.grant(:admin)

sale = Sale.create!(street: '13162 Capstone Drive', city: 'San Diego', state: 'California', zip: '92130', date: "2017-09-14", time: "8-11am", description: 'Moving soon and everything must go.', user_id: user.id )

item = Item.new(item_name: 'Shoes', item_description: 'Barely used brown Dansko clogs', price: '$25', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/dankso.jpg")
item.save

item = Item.new(item_name: 'Shoes', item_description: 'Gucci mules', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/gucciShoes.jpg")
item.save

item = Item.new(item_name: 'Boy clothes', item_description: 'Size 3T boy clothes', price: '$10', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/3Tboyclothes.jpg")
item.save

item = Item.new(item_name: 'Aeron chairs', item_description: '2 Aeron chairs great condition. Modern classics!', price: '$300 each', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/chair1.jpg")
item.save

item = Item.new(item_name: 'Youth golf clubs', item_description: 'Callaway golf club for kids', price: '$300 each', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/childgolfclubs.jpg")
item.save

item = Item.new(item_name: 'Comic books', item_description: 'Vintage comics, Superman and more', price: '$75 for set', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/comicbooks.jpg")
item.save

item = Item.new(item_name: 'Dining table set', item_description: 'Pretty dining table with 6 chairs', price: '$300 for set', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/diningtable1.jpg")
item.save

item = Item.new(item_name: 'Leather couch', item_description: 'Brown leather couch', price: '$200', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couch2.jpg")
item.save

item = Item.new(item_name: 'DW drums', item_description: 'DW drumkit for sale, great price', price: '$700', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/dwdrums.jpg")
item.save


item = Item.new(item_name: 'Tom arms for drums', item_description: 'Pair of arms for a tom for drumkit', price: '$45', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/drumstomarms.jpg")
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

item = Item.new(item_name: 'Coffee table', item_description: 'Gorgeous solid wood coffee table', price: '$260 obo', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/woodcoffeetable.jpg")
item.save

item = Item.new(item_name: 'Vegan cookbooks', item_description: '3 Vegan cookbooks, lots of good recipes', price: '$10 for all', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/vegcookbooks.jpg")
item.save

item = Item.new(item_name: 'Real Estate Books', item_description: 'Set of real estate books, perfect for license prep', price: '$15', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/realestatebooks.jpg")
item.save

item = Item.new(item_name: 'Minnie Mouse Doll', item_description: 'Really cute Disney classic', price: '$19', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/minniedoll.jpg")
item.save

item = Item.new(item_name: 'Stiped couch', item_description: 'Striped and floral comfy couch', price: '$100', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couch1.jpg")
item.save

item = Item.new(item_name: 'Ludwig drums', item_description: 'Ludwig drum set, cool blue wrap.', price: '$600', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/ludwigdrums.jpg")
item.save




user = User.create!(email: 'rithy@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '8857 Cliffridge Ave.
', city: 'San Diego', state: 'CA', zip: '92047', date: "2017-10-14", time: "7-10am",  description: 'Furniture, clothes and more!', user_id: user.id )


item = Item.new(item_name: 'Large sectional couch', item_description: 'Beautiful and comfortable L-shaped blue couch', price: '$499 or best offer', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couchsectional.jpg")
item.save


item = Item.new(item_name: 'Set of padded blue desk chairs', item_description: 'Set of 4 blue desk chairs for office', price: 'A steal at $399', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/bluechair.jpg")
item.save

item = Item.new(item_name: 'Running shoes', item_description: 'Womens size 7 black Nike running shoes', price: 'A steal at $29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/blacknike.jpg")
item.save

item = Item.new(item_name: 'Motorcycle books', item_description: 'Motorcyle mainteance and collectibles', price: '$22', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/motorcyclebooks.jpg")
item.save

item = Item.new(item_name: 'Golf clubs', item_description: 'Set of womens golf clubs', price: '$39', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/ladiesgolfclubs.jpg")
item.save

item = Item.new(item_name: 'Kids books', item_description: 'Dr. Seuss collection', price: '$19', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/kidsbooks.jpg")
item.save

item = Item.new(item_name: 'Painting', item_description: 'Horse racing painting, vibrant and Beautiful', price: '$129', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/horseracepainting.jpg")
item.save


item = Item.new(item_name: 'Beige couch', item_description: 'Pretty straight back beige couch', price: '$250', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couch3.jpg")
item.save

user = User.create!(email: 'rob@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '345 F Street Ste 175
', city: 'San Diego', state: 'California', zip: '91910', date: "2017-11-14", time: "2-4pm", description: 'Couch, patio furniture, cute clothes and other items', user_id: user.id )

item = Item.new(item_name: 'Overalls', item_description: 'Black Madewell overalls size extra small', price: '$29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/overallsxs.jpg")
item.save

item = Item.new(item_name: 'Patio furniture', item_description: 'Table and 6 chairs, beige fabric', price: '$150', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/patiofurniture.jpg")
item.save

item = Item.new(item_name: 'Russian dolls', item_description: 'Nested Russian dolls', price: '$29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/russiandolls.jpg")
item.save

item = Item.new(item_name: 'Yellow couch', item_description: 'Low back couch with classic yellow fabric', price: '$100', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/yellowcouch.jpg")
item.save

item = Item.new(item_name: 'Golf clubs', item_description: 'Drivers and putters, variety of clubs', price: '$69', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/golfclubs1.jpg")
item.save

item = Item.new(item_name: 'Dining table and chairs', item_description: 'Cherry dining table with 4 chairs', price: '$299', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/chair8.jpg")
item.save

item = Item.new(item_name: 'Antique doll', item_description: 'Antique doll from Germany', price: '$70', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/antiquedoll.jpg")
item.save

item = Item.new(item_name: 'Abstract Painting', item_description: 'Gold toned abstract painting', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/abstractpainting.jpg")
item.save

item = Item.new(item_name: 'Pearl drums', item_description: 'Pearl drumkit, 11 drums, great buy!', price: '$900', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/pearldrums.jpg")
item.save



user = User.create!(email: 'joe@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '6608 Reservoir Lane', city: 'San Diego', state: 'CA', zip: '92115', date: "2017-10-22", time: '9-noon', description: 'Sports equipment, golf clubs and more', user_id: user.id )

item = Item.new(item_name: 'Golf clubs', item_description: 'Great clubs barely used', price: '$51', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/golfclubs.jpg")
item.save

item = Item.new(item_name: 'Bookcase for girls room', item_description: 'Pottery Barn white bookcase', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/girlsbookcase.jpg")
item.save

item = Item.new(item_name: 'Baseball bat', item_description: 'Easton brand', price: '$49', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/baseballbat.jpg")
item.save

item = Item.new(item_name: 'Boys clothes', item_description: 'Clothes for 18 month boy', price: '$20 for the lot', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/18mboyclothes.jpg")
item.save

item = Item.new(item_name: 'Rattan queen chair', item_description: 'Pink rattan chair', price: '$89', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/chair5.jpg")
item.save


item = Item.new(item_name: 'Coffee table', item_description: 'Iron and wood coffee table', price: '$150', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/coffeetable.jpg")
item.save


item = Item.new(item_name: 'Geisha doll', item_description: 'Porcelein Geisha doll from Japan', price: '$50', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/geishadoll.jpg")
item.save


user = User.create!(email: 'bri@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '5955 Mira Mesa Blvd.', city: 'San Diego', state: 'CA', zip: '92121', date: "2018-01-22", time: '8-1pm', description: 'Books and paintings, couch and chairs, come by for a fabulous sale!', user_id: user.id )

user = User.create!(email: 'sandro@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '13671 Glencliff Way
', city: 'San Diego', state: 'CA', zip: '92130', date: "2017-10-22", time: '8-11am', description: 'Couch, chairs, skateboard, boys clothes. Moving sale, everything must go!', user_id: user.id )


user = User.create!(email: 'matt@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '13971 San Augustine Way

', city: 'San Diego', state: 'CA', zip: '92130', date: "2017-10-22", time: '9-whenever', description: 'Doll collection, drums, guitars galore.', user_id: user.id )


user = User.create!(email: 'garrett@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '2997 Glasgow Drive', city: 'Carlsbad', state: 'CA', zip: '92010', date: "2017-11-19", time: '8-12', description: 'Dining room set, toddler boys clothes, vintage drums.', user_id: user.id )


user = User.create!(email: 'mark@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '345 F Street Ste 175
', city: 'Chula Vista', state: 'CA', zip: '91910', date: "2017-12-19", time: '8-12', description: 'Art supplies for sale. Brushes, canvases and more. One pretty couch and a drum kit too. Come on by.', user_id: user.id )



##########################################################################################

user = User.create!(email: 'amy1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')
user.grant(:admin)

sale = Sale.create!(street: '2623 Monmouth Ave', city: 'Los Angeles', state: 'California', zip: '90007', date: "201-09-14", time: "8-11am", description: 'Moving soon and everything must go.', user_id: user.id )

item = Item.new(item_name: 'Shoes', item_description: 'Barely used brown Dansko clogs', price: '$25', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/dankso.jpg")
item.save

item = Item.new(item_name: 'Shoes', item_description: 'Gucci mules', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/gucciShoes.jpg")
item.save

item = Item.new(item_name: 'Boy clothes', item_description: 'Size 3T boy clothes', price: '$10', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/3Tboyclothes.jpg")
item.save

item = Item.new(item_name: 'Aeron chairs', item_description: '2 Aeron chairs great condition. Modern classics!', price: '$300 each', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/chair1.jpg")
item.save

item = Item.new(item_name: 'Youth golf clubs', item_description: 'Callaway golf club for kids', price: '$300 each', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/childgolfclubs.jpg")
item.save

item = Item.new(item_name: 'Comic books', item_description: 'Vintage comics, Superman and more', price: '$75 for set', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/comicbooks.jpg")
item.save

item = Item.new(item_name: 'Dining table set', item_description: 'Pretty dining table with 6 chairs', price: '$300 for set', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/diningtable1.jpg")
item.save

item = Item.new(item_name: 'Leather couch', item_description: 'Brown leather couch', price: '$200', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couch2.jpg")
item.save

item = Item.new(item_name: 'DW drums', item_description: 'DW drumkit for sale, great price', price: '$700', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/dwdrums.jpg")
item.save


item = Item.new(item_name: 'Tom arms for drums', item_description: 'Pair of arms for a tom for drumkit', price: '$45', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/drumstomarms.jpg")
item.save



user = User.create!(email: 'sharmila1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '215 South St. Andrews Place
', city: 'Los Angeles', state: 'California', zip: '90004', date: "2017-09-25", time: "9-noon", description: 'Power tools and more!', user_id: user.id )


item = Item.new(item_name: 'Saw', item_description: 'Power saw from Home Depot', price: '$60', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/saw.jpg")
item.save

item = Item.new(item_name: 'Sander', item_description: 'Deck XP', price: '$75', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/sander.jpg")
item.save


item = Item.new(item_name: 'Comfy chair', item_description: 'Plush red chair', price: '$105', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/redchair.jpg")
item.save

item = Item.new(item_name: 'Coffee table', item_description: 'Gorgeous solid wood coffee table', price: '$260 obo', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/woodcoffeetable.jpg")
item.save

item = Item.new(item_name: 'Vegan cookbooks', item_description: '3 Vegan cookbooks, lots of good recipes', price: '$10 for all', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/vegcookbooks.jpg")
item.save

item = Item.new(item_name: 'Real Estate Books', item_description: 'Set of real estate books, perfect for license prep', price: '$15', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/realestatebooks.jpg")
item.save

item = Item.new(item_name: 'Minnie Mouse Doll', item_description: 'Really cute Disney classic', price: '$19', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/minniedoll.jpg")
item.save

item = Item.new(item_name: 'Stiped couch', item_description: 'Striped and floral comfy couch', price: '$100', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couch1.jpg")
item.save

item = Item.new(item_name: 'Ludwig drums', item_description: 'Ludwig drum set, cool blue wrap.', price: '$600', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/ludwigdrums.jpg")
item.save




user = User.create!(email: 'rithy1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '758 N. McCadden Place

', city: 'Los Angeles', state: 'CA', zip: '90038', date: "2017-10-14", time: "7-10am",  description: 'Furniture, clothes and more!', user_id: user.id )


item = Item.new(item_name: 'Large sectional couch', item_description: 'Beautiful and comfortable L-shaped blue couch', price: '$499 or best offer', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couchsectional.jpg")
item.save


item = Item.new(item_name: 'Set of padded blue desk chairs', item_description: 'Set of 4 blue desk chairs for office', price: 'A steal at $399', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/bluechair.jpg")
item.save

item = Item.new(item_name: 'Running shoes', item_description: 'Womens size 7 black Nike running shoes', price: 'A steal at $29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/blacknike.jpg")
item.save

item = Item.new(item_name: 'Motorcycle books', item_description: 'Motorcyle mainteance and collectibles', price: '$22', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/motorcyclebooks.jpg")
item.save

item = Item.new(item_name: 'Golf clubs', item_description: 'Set of womens golf clubs', price: '$39', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/ladiesgolfclubs.jpg")
item.save

item = Item.new(item_name: 'Kids books', item_description: 'Dr. Seuss collection', price: '$19', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/kidsbooks.jpg")
item.save

item = Item.new(item_name: 'Painting', item_description: 'Horse racing painting, vibrant and Beautiful', price: '$129', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/horseracepainting.jpg")
item.save


item = Item.new(item_name: 'Beige couch', item_description: 'Pretty straight back beige couch', price: '$250', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/couch3.jpg")
item.save

user = User.create!(email: 'rob1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '200 South Grand Avenue

', city: 'Los Angeles', state: 'California', zip: '90012', date: "2017-11-14", time: "2-4pm", description: 'Couch, patio furniture, cute clothes and other items', user_id: user.id )

item = Item.new(item_name: 'Overalls', item_description: 'Black Madewell overalls size extra small', price: '$29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/overallsxs.jpg")
item.save

item = Item.new(item_name: 'Patio furniture', item_description: 'Table and 6 chairs, beige fabric', price: '$150', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/patiofurniture.jpg")
item.save

item = Item.new(item_name: 'Russian dolls', item_description: 'Nested Russian dolls', price: '$29', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/russiandolls.jpg")
item.save

item = Item.new(item_name: 'Yellow couch', item_description: 'Low back couch with classic yellow fabric', price: '$100', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/yellowcouch.jpg")
item.save

item = Item.new(item_name: 'Golf clubs', item_description: 'Drivers and putters, variety of clubs', price: '$69', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/golfclubs1.jpg")
item.save

item = Item.new(item_name: 'Dining table and chairs', item_description: 'Cherry dining table with 4 chairs', price: '$299', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/chair8.jpg")
item.save

item = Item.new(item_name: 'Antique doll', item_description: 'Antique doll from Germany', price: '$70', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/antiquedoll.jpg")
item.save

item = Item.new(item_name: 'Abstract Painting', item_description: 'Gold toned abstract painting', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/abstractpainting.jpg")
item.save

item = Item.new(item_name: 'Pearl drums', item_description: 'Pearl drumkit, 11 drums, great buy!', price: '$900', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/pearldrums.jpg")
item.save



user = User.create!(email: 'joe1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '2658 Griffith Park Blvd', city: 'Los Angeles', state: 'CA', zip: '90039', date: "2017-10-22", time: '9-noon', description: 'Sports equipment, golf clubs and more', user_id: user.id )

item = Item.new(item_name: 'Golf clubs', item_description: 'Great clubs barely used', price: '$51', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/golfclubs.jpg")
item.save

item = Item.new(item_name: 'Bookcase for girls room', item_description: 'Pottery Barn white bookcase', price: '$99', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/girlsbookcase.jpg")
item.save

item = Item.new(item_name: 'Baseball bat', item_description: 'Easton brand', price: '$49', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/baseballbat.jpg")
item.save

item = Item.new(item_name: 'Boys clothes', item_description: 'Clothes for 18 month boy', price: '$20 for the lot', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/18mboyclothes.jpg")
item.save

item = Item.new(item_name: 'Rattan queen chair', item_description: 'Pink rattan chair', price: '$89', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/chair5.jpg")
item.save


item = Item.new(item_name: 'Coffee table', item_description: 'Iron and wood coffee table', price: '$150', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/coffeetable.jpg")
item.save


item = Item.new(item_name: 'Geisha doll', item_description: 'Porcelein Geisha doll from Japan', price: '$50', sale_id: sale.id)
item.image = File.open("#{Rails.root}/test/SeedFileImages/geishadoll.jpg")
item.save


user = User.create!(email: 'bri1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '1200 Getty Center Dr', city: 'Los Angeles', state: 'CA', zip: '90049', date: "2018-01-22", time: '8-1pm', description: 'Books and paintings, couch and chairs, come by for a fabulous sale!', user_id: user.id )

user = User.create!(email: 'sandro1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '403 N Oakhurst Dr
', city: 'Los Angeles', state: 'CA', zip: '90210', date: "2017-10-22", time: '8-11am', description: 'Couch, chairs, skateboard, boys clothes. Moving sale, everything must go!', user_id: user.id )


user = User.create!(email: 'matt1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '1733 N Rose Ave

', city: 'Los Angeles', state: 'CA', zip: '90221', date: "2017-10-22", time: '9-whenever', description: 'Doll collection, drums, guitars galore.', user_id: user.id )


user = User.create!(email: 'garrett1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '380 Santa Monica Pier', city: 'Santa Monica', state: 'CA', zip: '90410', date: "2017-11-19", time: '8-12', description: 'Dining room set, toddler boys clothes, vintage drums.', user_id: user.id )


user = User.create!(email: 'mark1@gmail.com', password: 'jstreet', password_confirmation: 'jstreet')

sale = Sale.create!(street: '383 S Marengo Ave
', city: 'Pasadena', state: 'CA', zip: '91101', date: "2017-12-19", time: '8-12', description: 'Art supplies for sale. Brushes, canvases and more. One pretty couch and a drum kit too. Come on by.', user_id: user.id )







p "Created #{User.count} users"
p "Created #{Sale.count} sales"
p "Created #{Item.count} items"



