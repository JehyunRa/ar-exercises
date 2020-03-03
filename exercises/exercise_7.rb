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

print "store name: "
user_input = gets.chomp

newStore = Store.create(
  name: user_input
)

if newStore.errors.any?
  newStore.errors.each do |attribute, message|
    puts "error: #{attribute} #{message}"
  end
end
