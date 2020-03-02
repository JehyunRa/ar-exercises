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

class Employee
  validates :first_name, :last_name, :hourly_rate, :store_id, presence: true
  validates :hourly_rate, numericality:
  { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end

class Store
  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality:
  { only_integer: true, greater_than_or_equal_to: 0 }
end

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
