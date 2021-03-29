require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Kir", hourly_rate: 100)
@store1.employees.create(first_name: "Bob", last_name: "Builder", hourly_rate: 40)


@store2.employees.create(first_name: "K", last_name: "V", hourly_rate: 50)
@store2.employees.create(first_name: "Gene", last_name: "Parmesan", hourly_rate: 75)
@store2.employees.create(first_name: "Future", last_name: "Rapper", hourly_rate: 200)
@store1.employees.create(first_name: "Drake", last_name: "M", hourly_rate: 200)


