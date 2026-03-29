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
rod1 = Product.create!(
  id: 1,
  name: "Ultralight Custom Rod",
  description: "Perfect for trout and panfish",
  price: 120.00
)
rod1.image.attach(
    io: File.open(Rails.root.join('app/assets/images/seed/rod1.jpg')),
    filename: '../app/assets/images/DSC_3944.JPG'
)

# Create Rod 2
rod2 = Product.create!(
  id: 2,
  name: "Medium Baitcaster",
  description: "Great all-rounder",
  price: 100.00
)
rod2.image.attach(
  io: File.open(Rails.root.join('app/assets/images/seeds/rod2.jpg')),
  filename: '../app/assets/images/DSC_3928.JPG'
)

# Create Rod 3
rod3 = Product.create!(
  id: 3,
  name: "Heavy Surf Rod",
  description: "Big Hoss",
  price: 350.00
)
rod3.image.attach(
  io: File.open(Rails.root.join('app/assets/images/seeds/rod3.jpg')),
  filename: '../app/assets/images/DSC_3932.JPG'
)
puts "Successfully seeded 3 fishing rods!"
