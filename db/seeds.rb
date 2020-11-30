# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# Deleting items

puts '--Cleaning My staples'
MyStaple.destroy_all
puts 'My staples cleaned'

puts '--Cleaning staples'
Staple.destroy_all
puts 'Staples cleaned'

puts '--Cleaning categories'
Category.destroy_all
puts 'Categories cleaned'

puts '--Cleaning quantities'
Quantity.destroy_all
puts 'quantities cleaned'

puts '--Cleaning Users'
User.destroy_all
puts 'Users cleaned'

puts '--Cleaning Grocery Lists'
GroceryList.destroy_all
puts 'Grocery Lists cleaned'

puts '--Cleaning Groups'
Group.destroy_all
puts 'Groups cleaned'


#Categories

puts '// Creating categories...'
fridge = Category.create!(name: 'Fridge')
pantry = Category.create!(name: 'Pantry')
freezer = Category.create!(name: 'Freezer')
hygiene = Category.create!(name: 'Hygiene')
puts 'Categories created'


# Staples

puts '// Creating staples...'
mustard = Staple.create!(name: 'Mustard', category: fridge)
tahini = Staple.create!(name: 'Tahini', category: fridge)
chickpeas = Staple.create!(name: 'Chickpeas', category: pantry)
quinoa = Staple.create!(name: 'Quinoa', category: pantry)
frozen_berries = Staple.create!(name: 'Frozen Berries', category: freezer)
toilet_paper = Staple.create!(name: 'Toilet Paper', category: hygiene)
toothpaste = Staple.create!(name: 'Toothpaste', category: hygiene)
puts 'Staples created'


# Quantities

puts '// Creating quantities...'
full = Quantity.create!(value: 'Full')
almost_empty = Quantity.create!(value: 'Almost empty')
empty = Quantity.create!(value: 'Empty')
puts "Quantities created"


# Groups

# puts '// Creating Groups...'
# dupond = Group.create!
# thomas = Group.create!
# puts "Groups created"


# Users

puts '// Creating Users...'
emilie_dupond = User.create!(username: 'Emilie-dup', email: 'Emilie@gmail.com', password: 'Emilie123', group: Group.create, group_admin: true )
# jean_dupond = User.create!(username: 'Jean-dup', email: 'jean@gmail.com', password: 'Jean123', group: Group.create, group_admin: true )
marie_thomas = User.create(username: 'Marie Thomas', email: 'marie@gmail.com', password: 'Marie123', group: Group.create, group_admin: true )
puts "Users created"


# Grocery Lists

puts '// Creating Grocery Lists...'
dupond_list = GroceryList.create!(group: emilie_dupond.group)
thomas_list = GroceryList.create!(group: marie_thomas.group)
puts "Grocery Lists created"


# My Staples

puts '// Creating My staples...'
chickpeas_for_dupond = MyStaple.create!(staple: chickpeas, quantity: full, grocery_list: dupond_list)
quinoa_for_dupond = MyStaple.create!(staple: quinoa, quantity: full, grocery_list: dupond_list)
mustard_for_dupond = MyStaple.create!(staple: mustard, quantity: almost_empty, grocery_list: dupond_list)
frozen_berries_for_dupond = MyStaple.create!(staple: frozen_berries, quantity: empty, grocery_list: dupond_list)
quinoa_for_thomas = MyStaple.create!(staple: quinoa, quantity: full, grocery_list: thomas_list)
puts "My staples created"