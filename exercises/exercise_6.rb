require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 62)
@store2.employees.create(first_name: "Douglas", last_name: "Young", hourly_rate: 97)
@store1.employees.create(first_name: "Bunt", last_name: "Wagner", hourly_rate: 69)
@store2.employees.create(first_name: "Chavez", last_name: "Boltcutter", hourly_rate: 41)
@store1.employees.create(first_name: "Corgi", last_name: "McGuillicuddy", hourly_rate: 43)
@store2.employees.create(first_name: "Tommy", last_name: "Gunn", hourly_rate: 58)

puts @store1.employees.count
puts @store2.employees.count