# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


#Categories

# puts '--Cleaning categories'
# Category.destroy_all
# puts 'Categories cleaned'

# puts '// Creating categories...'
# fridge = Category.create!(name: 'Fridge')
# pantry = Category.create!(name: 'Pantry')
# freezer = Category.create!(name: 'Freezer')
# hygiene = Category.create!(name: 'Hygiene')
# puts 'Categories created'


# Staples

# puts '--Cleaning staples'
# Staple.destroy_all
# puts 'Staples cleaned'

# puts '// Creating staples...'
# mustard = Staple.create!(name: 'Mustard', category: fridge)
# tahini = Staple.create!(name: 'Tahini', category: fridge)
# chickpeas = Staple.create!(name: 'Chickpeas', category: pantry)
# quinoa = Staple.create!(name: 'Quinoa', category: pantry)
# frozen_berries = Staple.create!(name: 'Frozen Berries', category: freezer)
# toilet_paper = Staple.create!(name: 'Toilet Paper', category: hygiene)
# toothpaste = Staple.create!(name: 'Toothpaste', category: hygiene)
# puts 'Staples created'


# Quantities

# puts '--Cleaning quantities'
# Quantity.destroy_all
# puts 'quantities cleaned'

# puts '// Creating quantities...'
# full = Quantity.create!(value: 'Full')
# almost_empty = Quantity.create!(value: 'Almost empty')
# empty = Quantity.create!(value: 'Empty')
# puts "Quantities created"


# Groups

# puts '--Cleaning Groups'
# Group.destroy_all
# puts 'Groups cleaned'

# puts '// Creating Groups...'
# dupond = Group.create!(name: 'Dupond')
# thomas = Group.create!(name: 'Thomas')
# puts "Groups created"


# Users

# puts '--Cleaning Users'
# User.destroy_all
# puts 'Users cleaned'

# puts '// Creating Users...'
# emilie_dupond = User.create!(username: 'Emilie-dup', email: 'Emilie@gmail.com', password: 'Emilie123', group: dupond, group_admin: true )
# jean_dupond = User.create!(username: 'Jean-dup', email: 'jean@gmail.com', password: 'Jean123', group: dupond, group_admin: false )
# marie_thomas = User.create(username: 'Marie Thomas', email: 'marie@gmail.com', password: 'Marie123', group: thomas, group_admin: true )
# puts "Users created"


# Grocery Lists

# puts '--Cleaning Grocery Lists'
# GroceryList.destroy_all
# puts 'Grocery Lists cleaned'

# puts '// Creating Grocery Lists...'
# dupond_list = GroceryList.create!(name: 'Dupond', group: dupond)
# thomas_list = GroceryList.create!(name: 'Thomas', group: thomas)
# puts "Grocery Lists created"

