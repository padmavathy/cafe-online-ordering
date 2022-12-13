# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([name: 'Star Wars' }, name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Menu.destroy_all
Category.destroy_all
Item.destroy_all

Menu.create(name: "Breakfast") # id: 1
Menu.create(name: "Dinner") # id: 2

Category.create(name: "Drinks") # id: 1
Category.create(name: "Bakery") # id: 2
Category.create(name: "Desserts") # id: 3

# Drinks
Item.create(name: "Hot Coffee(8oz)", price: 1.25, menu_id: 1, category_id: 1, description: "Hot coffee brewed via French press method served in an 8 oz mug.")
Item.create(name: "Hot Coffee(12oz)", price: 1.50, menu_id: 1, category_id: 1, description: "Hot coffee brewed via French press method served in a 12oz mug.")
Item.create(name: "Iced Coffee(16oz)", price: 2.00, menu_id: 1, category_id: 1, description: "Coffee brewed double-strength via French press method served in 16oz glass over ice.")
Item.create(name: "Iced Coffee(20oz)", price: 2.50, menu_id: 1, category_id: 1, description: "Coffee brewed double-strength via French press method served in 20oz glass over ice.")
Item.create(name: "Cold Brew(16oz)", price: 2.25, menu_id: 1, category_id: 1, description: "Coffee steeped over 20 hours served in 16oz glass over ice.")
Item.create(name: "Cold Brew(20oz)", price: 2.50, menu_id: 2, category_id: 1, description: "Coffee steeped over 20 hours served in 20oz glass over ice.")
Item.create(name: "Hot Black Tea(8oz)", price: 1.25, menu_id: 1, category_id: 1, description: "Hot English Breakfast tea served in 8oz mug.")
Item.create(name: "Hot Black Tea(12oz)", price: 1.50, menu_id: 1, category_id: 1, description: "Hot English Breakfast tea served in 12oz mug.")
Item.create(name: "Iced Unsweetened Black Tea(16oz)", price: 2.00, menu_id: 2, category_id: 1, description: "Black tea brewed double strength served over ice in 16oz glass.")
Item.create(name: "Iced Unsweetened Black Tea(20oz)", price: 2.25, menu_id: 3, category_id: 1, description: "Black tea brewed double strength served over ice in 20oz glass.")
Item.create(name: "Iced Sweetened Black Tea(16oz)", price: 2.00, menu_id: 2, category_id: 1, description: "Black tea brewed double strength sweetened and served over ice in 16oz glass.")
Item.create(name: "Iced Sweetened Black Tea(20oz)", price: 2.25, menu_id: 3, category_id: 1, description: "Black tea brewed double strength sweetened and served over ice in 20oz glass.")
Item.create(name: "Fountain Drinks (20oz)", price: 2.00, menu_id: 3, category_id: 1, description: "Coke, Diet Coke, Sprite, Barq's Root Beer, and Lemonade")

# Bakery
Item.create(name: "Butter Croissant", price: 2.00, menu_id: 1, category_id: 2, description: "Flaky, layered French pastry.")
Item.create(name: "Chocolate Croissant", price: 2.25, menu_id: 1, category_id: 2, description: "Flaky, layered French pastry stuff with semi-sweet chocolate.")
Item.create(name: "Strawberry Croissant", price: 2.25, menu_id: 1, category_id: 2, description: "Flaky, layered French pastry filled with strawberry jam and whipped cream.")
Item.create(name: "Blueberry Muffin", price: 2.25, menu_id: 1, category_id: 2,  description: "Blueberry muffin with streusel topping and served warm.")
Item.create(name: "Lemon Poppy Seed Muffin", price: 2.25, menu_id: 1, category_id: 2,  description: "Lemon poppy seed muffin topped with vanilla drizzle")
Item.create(name: "Chocolate Chip Muffin", price: 2.25, menu_id: 1, category_id: 2,  description: "Muffin filled with semi-sweet chocolate chunks")
Item.create(name: "Blueberry Scone", price: 2.25, menu_id: 1, category_id: 2,  description: "Buttery, crumbly blueberry scone")
Item.create(name: "Cranberry Orange Scone", price: 2.25, menu_id: 1, category_id: 2,  description: "Buttery, crumbly scone filled with cranberries and infused with orange zest.")
Item.create(name: "Vanilla Bean Scone", price: 2.25, menu_id: 1, category_id: 2,  description: "Vanilla bean scone with a light vanilla glaze.")
Item.create(name: "Plain Bagel", price: 1.00, menu_id: 1, category_id: 2,  description: "Plain flavored bagel. Can be toasted and topped with cream cheese, hummus or peanut butter.")
Item.create(name: "Everything Bagel", price: 1.25, menu_id: 1, category_id: 2,  description: "Bagel topped with a mixture of sesame seeds, garlic, onion, salt, and poppy seeds. Can be toasted and topped with cream cheese, hummus, or peanut butter.")

# Desserts
Item.create(name: "Apple Pie", price: 3.75, menu_id: 2, category_id: 3, description: "Apple pie with a caramelized, crumbly streusel topping.")
Item.create(name: "Brownie Surprise", price: 3.75, menu_id: 2, category_id: 3, description: "Brownie filled with chocolate chunks baked in a cast-iron skillet and topped with vanilla ice cream and chocolate drizzile.")
Item.create(name: "Cookie Sundae", price: 3.75, menu_id: 2, category_id: 3, description: "Chocolate chip cookie baked in cast-iron skillet topped with vanilla ice cream, whipped cream, chocolate drizzle and a cherry on top.")
Item.create(name: "Banana Pudding", price: 3.75, menu_id: 2, category_id: 3, description: "Banana pudding made with vanilla wafers layered with whipped vanilla pudding.")
Item.create(name: "New York Style Cheesecake", price: 3.75, menu_id: 2, category_id: 3, description: "New York style cheesecake served with strawberry compote.")

puts "Total number of items: #{Item.all.count}"

Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"