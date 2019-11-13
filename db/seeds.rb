require "faker"

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Artist.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save
end

puts 'Finished!'
