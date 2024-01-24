puts "Cleaning database..."

Restaurant.destroy_all
puts "Creating restaurants..."
resto_1 = { name: "Name1", address: "Address1", phone_number: "123-456-7890", category: "chinese" }
resto_2 = { name: "Name2", address: "Address2", phone_number: "123-456-7890", category: "italian" }
resto_3 = { name: "Name3", address: "Address3", phone_number: "123-456-7890", category: "japanese" }
resto_4 = { name: "Name4", address: "Address4", phone_number: "123-456-7890", category: "french" }
resto_5 = { name: "Name5", address: "Address5", phone_number: "123-456-7890", category: "belgian" }

[resto_1, resto_2, resto_3, resto_4, resto_5].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
