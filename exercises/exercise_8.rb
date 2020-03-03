require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes below here

@store1.employees.create(
  first_name: "2nd",
  last_name: "Guy",
  hourly_rate: 40
)

@employee2 = Employee.find_by(id: 2)
puts "first_name: #{@employee2.first_name}/ password: #{@employee2.password}"
