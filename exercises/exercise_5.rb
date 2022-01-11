require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts total_revenue = Store.sum(:annual_revenue)

@burnaby = Store.find_by(name: "Burnaby")
@richmond = Store.find_by(name: "Richmond")
@burnaby.destroy
@richmond.destroy
@stores = Store.all

puts @high_rev = Store.where("annual_revenue > ?", 1000000).count

puts average_revenue = total_revenue / @stores.count

