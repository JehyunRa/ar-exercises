require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(
  name: "Surray",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

puts "----------"
puts "-- Mens --"
puts "----------"
for s in Store.where("mens_apparel = true")
  puts "#{s.name}: #{s.annual_revenue}"
end

puts "------------------"
puts "-- Womens < $1M --"
puts "------------------"
data = Store.where("womens_apparel = true AND annual_revenue <= 1000000")
for s in data
  puts "#{s.name}: #{s.annual_revenue}"
end
