require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

store2 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

store3 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where("mens_apparel = true")

@mens_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end

@women_stores = Store.where("womens_apparel = true", "annual_revenue < 10000000")

@women_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end