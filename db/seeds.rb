# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
    {name: "Foliage plants", description: "Decorative, leafy plants"},
    {name: "Flowering plants", description: "Bright, colourful blooming plants"},
    {name: "Succulents", description: "Low-maintenance, water-storing plants"},
    {name: "Cacti", description: "Unique-shaped, low-maintenance plants"},
    {name: "Ferns", description: "Plants with lush fronds"},
    {name: "Trailing plants", description: "Plants with cascading foliage"}
]

features = ["Easy care", "Low light", "Bright light", "Air purifying", "Small-sized", "Medium-sized", "Large-sized"]

if User.count == 0 
    User.create(username: "Tester", email: "test@test.com", password: "password", password_confirmation: "password")
end

if Category.count == 0 
    categories.each do |category| 
        Category.create(name: category[:name], description: category[:description])
        puts "created #{category[:name]} category"
    end 
end

if Feature.count == 0
    features.each do |feature| 
        Feature.create(name: feature)
        puts "created #{feature} feature"
    end 
end