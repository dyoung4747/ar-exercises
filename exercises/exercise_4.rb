require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)
store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |s| puts "Store: #{s.name}, Annual Revenue: #{s.annual_revenue}" }

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

puts "---------"

@womens_stores.each { |s| puts "Store: #{s.name}, Annual Revenue: #{s.annual_revenue}" }