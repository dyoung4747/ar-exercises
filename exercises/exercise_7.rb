require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please insert a store name:"

print "> "
@choice = $stdin.gets.chomp

@store = Store.create(name: "#{@choice}", annual_revenue: 918274)

if @store.errors.any?
  @store.errors.each { |attribute, message| puts "#{attribute} #{message}" }
end

puts Store.all.count