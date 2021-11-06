# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
puts "Cleaning database..."
Project.destroy_all

puts "Creating Projects"
5.times do
  Project.create(
    name: Faker::Science.scientist,
    start_date: Date.new(2021, rand(11..12), rand(1..15)),
    end_date: Date.new(2021, 12, rand(15..30)),
    user_id: 1,
    estimated_hours: rand(5..20)
  )
end
puts "finished"
