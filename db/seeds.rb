# class Seed

#   def self.begin
#     seed = Seed.new
#     seed.generate_products
#   end

#   def generate_products
#     4.times do |i|
#       Product.create!(name: Faker::Lorem.word, price: rand(10...100), description: Faker::Lorem.sentence(5, false, 0).chop)
#     end
#   end
# end


# Seed.begin

Product.create!([
  {
    name: 'Bananas',
    product_img: URI.parse('https://i.imgur.com/6tGwubv.jpg'),
    price: rand(5...14),
    description: Faker::Lorem.sentence(5, false, 0).chop
  },
  {
    name: 'Acai',
    product_img: URI.parse('https://i.imgur.com/xzetOSU.jpg'),
    price: rand(5...14),
    description: Faker::Lorem.sentence(5, false, 0).chop
  },
  {
    name: 'Apples',
    product_img: URI.parse('https://i.imgur.com/5hGbyJO.jpg'),
    price: rand(5...14),
    description: Faker::Lorem.sentence(5, false, 0).chop
  },
  {
    name: 'Mango',
    product_img: URI.parse('https://i.imgur.com/iad7hRk.jpg'),
    price: rand(5...14),
    description: Faker::Lorem.sentence(5, false, 0).chop
  }
])
