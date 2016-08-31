# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Starting database seed."
puts "Seeding Categories table"


5.times do |i|
  Category.create(kind: "Category ##{i+1}")
  puts "Added Category ##{i+1}"
end

puts "Seeding Entries table"

5.times do |i|
  Entry.create(name: "Entry ##{i+1}", quantity: "#{i+1}", price: "#{i+1}.#{(i+1)*11}", category_id: "#{i+1}")
  puts "Added Entry ##{i+1}, quantity: #{i+1}, price: #{i+1}.#{(i+1)*11}, category_id: #{i+1}"
end

puts "Finished database seed"
