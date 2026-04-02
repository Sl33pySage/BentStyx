# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end




# Clear old data to avoid duplication
Product.destroy_all

# Create Rod 1
Product.create!(
  id: 1,
  name: "Medium-Light/FastAction Custom Rod",
  description: "Perfect for trout and panfish",
  price: 250.00,
  image_name: "rod1.JPG"
)

# Create Rod 2
Product.create!(
  id: 2,
  name: "Medium/Moderate-Action Custom Baitcaster Rod",
  description: "Great all-rounder",
  price: 250.00,
  image_name: "rod2.JPG"
)

# Create Rod 3
Product.create!(
  id: 3,
  name: "Medium-Heavy/Fast-Action Custom Baitcaster Rod",
  description: "Bass Rod Fishing Dream!",
  price: 350.00,
  image_name: "rod3.JPG"
)
puts "Seeds created!"
