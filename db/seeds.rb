# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  Employee.create!(email: "user#{i}@mail.com", password: "password")
end

10.times do |i|
  giver_id = rand(1..5)
  receiver_id = rand(1..5)

  if giver_id == receiver_id
    receiver_id  = rand(1..5)
  end

  Kudo.create!(title: "kudo#{i}", content: "kudo#{i} content", giver_id: giver_id, receiver_id: receiver_id)  
end