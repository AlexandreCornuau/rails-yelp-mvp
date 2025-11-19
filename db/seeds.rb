require "faker"
puts "Destoying database..."
Restaurant.destroy_all

puts "Creating amAAaAAAzing restaurants..."
5.times do
  Restaurant.create!(name: Faker::Restaurant.name , address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.phone_number,  category:Restaurant::CATEGORIES.sample)
end
