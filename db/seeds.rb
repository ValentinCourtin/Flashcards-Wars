
# require 'faker'

p "Destroying users... 💀"
User.destroy_all


p "Creating 2 new users... 🔄"

usertest = User.create!(
  email: "test@test.com",
  password: "123456",
  first_name: "Toto",
  last_name: "Lezozo",
  gold_count: 10,
  experience: 50
)
usertest2 = User.create!(
  email: "lynn@telia.com",
  password: "123456",
  first_name: "Lynn",
  last_name: "Telia",
  gold_count: 100,
  experience: 500
)


# p "Creating 10 new ???... 🔄"

# 10.times do
#   ??? = ???.new(
#     name: Faker::JapaneseMedia::OnePiece.character,
#     description: Faker::Lorem.paragraph,
#     price: Faker::Commerce.price,
#     user: usertest
#   )

#   file = URI.open(Faker::LoremFlickr.image)
#   ???.categories << Category.all.sample
#   ???.picture.attach(io: file, filename: "nes.png", content_type: "image/png")
#   ???.save!
# end


p "Finished! 👏"
