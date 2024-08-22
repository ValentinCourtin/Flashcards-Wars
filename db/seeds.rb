require 'faker'

puts ""
puts "-------- STEP 1 : DESTROYING ALL 💀 --------"
puts ""

puts "Destroying trainings... 💀"
Training.destroy_all
puts "Destroying trainingsAnswers... 💀"
TrainingAnswer.destroy_all
puts "Destroying users... 💀"
User.destroy_all
puts "Destroying possibilities... 💀"
Possibility.destroy_all
puts "Destroying questions... 💀"
Question.destroy_all
puts "Destroying subcategories... 💀"
Subcategory.destroy_all
puts "Destroying categories... 💀"
Category.destroy_all
puts "Destroying items...💀"
Item.destroy_all
puts "Destroying inventories... 💀"
Inventory.destroy_all

puts ""
puts "Finished! 💀"
puts ""

puts ""
puts "-------- STEP 2 : CREATING ALL 🌱 --------"
puts ""

puts "Creating categories... 🌱"
cat_ruby = Category.create(name:"Ruby")
cat_rails = Category.create(name: "Rails")

puts "Creating subcategories... 🌱"
sub_ruby = Subcategory.create(name: "Basics ruby", content:"blablab blablabl", category: cat_ruby)
sub_ruby2 = Subcategory.create(name: "Méthodes ruby", content:"tototototot", category: cat_ruby)
sub_rails = Subcategory.create(name: "Basics rails", content:"hohohoho", category: cat_rails)
sub_rails2 = Subcategory.create(name: "Methodes rails", content:"huhuhuhuh", category: cat_rails )

puts "Creating questions... 🌱"
quest_1 = Question.create(content:"question1", explication:"explication de la question 1", subcategory: sub_ruby )
quest_2 = Question.create(content:"question2", explication:"explication de la question 2", subcategory: sub_ruby )
quest_3 = Question.create(content:"question3?", explication:"explication de la question 3", subcategory: sub_ruby2 )
quest_4 = Question.create(content:"question4?", explication:"explication de la question 4", subcategory: sub_ruby2 )
quest_5 = Question.create(content:"question5?", explication:"explication de la question 5", subcategory: sub_rails)
quest_6 = Question.create(content:"question6?", explication:"explication de la question 6", subcategory: sub_rails)
quest_7 = Question.create(content:"question7?", explication:"explication de la question 7", subcategory: sub_rails2)
quest_8 = Question.create(content:"question8?", explication:"explication de la question 8", subcategory: sub_rails2)

puts "Creating answers... 🌱"
Question.all.each do |question|
  3.times do
    Possibility.create(content:"réponse fausse", correct:false, question: question )
  end
  Possibility.create(content:"réponse vraie", correct: true, question: question )
end

puts "Creating users... 🌱"
10.times do
  user = User.create!(
        email: Faker::Internet.email,
        password: Faker::Number.number(digits: 6), #=> 196835
        first_name: Faker::JapaneseMedia::OnePiece.character,
        last_name: Faker::JapaneseMedia::OnePiece.sea,
        gold_count: Faker::Number.number(digits: 2), #=> 19
        experience: Faker::Number.number(digits: 3) #=> 196
      )
end

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
  experience: 999
)

usertest3 = User.create!(
  email: "chloe@test.com",
  password: "123456",
  first_name: "Chloe",
  last_name: "Bourgeois",
  gold_count: 50,
  experience: 500
)

puts ""
puts "Finished! 🌱"
puts ""

puts ""
puts "------ STEP 3 : CREATING ITEMS 🌱 ------"
puts ""

puts "Creating items... 🌱"

Item individual 1
image_path_i1 = Rails.root.join('db', 'images', 'supercroissant.png')
image_file_i1 = File.open(image_path_i1)
item_i1 = Item.create!(name:"Super Croissant", description:"The player selected has to bring croissant for next breakfast!", probability: "0,05")
item_i1.photo.attach(io: image_file_i1, filename:'supercroissant.png', content_type: 'image/png')
image_file_i1.close

# db/seeds.rb
puts ""
items = [
   {
     name: "Super croissant",
     description: "The player selected has to bring croissant for next breakfast!",
     probability: 0.05,
     image_name: "supercroissant.png"
   },
   {
     name: "Butler",
     description: "The player selected his your butler for one day!",
     probability: 0.2,
     image_name: "butler.png"
   },
   {
    name: "Swap",
    description: "You can give your place at the Livecode to whomever you wish!",
    probability: 0.2,
    image_name: "swap.png"
  },
  {
    name: "Golden ticket",
    description: "Your next ticket has priority over all other tickets!",
    probability: 0.6,
    image_name: "goldenticket.png"
  },
  {
    name: "Shut up",
    description: "The selected person must not speak for 10 minutes.",
    probability: 0.6,
    image_name: "shutup.png"
  },
  {
    name: "Walker",
    description: "The selected player must walk around the block!",
    probability: 0.6,
    image_name: "walker.png"
  },
  {
    name: "Keyword",
    description: "Every time you say your keyword, everyone has to stand up for 1 day!",
    probability: 0.05,
    image_name: "keyword.png"
  },
  {
    name: "R.E.S.P.E.C.T",
    description: "Everyone must be very polite to you for 1 day!",
    probability: 0.15,
    image_name: "respect.png"
  },
  {
    name: "Ola",
    description: "For a day, every time you enter a room, everyone has to do an ola!",
    probability: 0.15,
    image_name: "ola.png"
  },
  {
    name: "Ego Boost",
    description: "Everyone has to give you a compliment!",
    probability: 0.4,
    image_name: "egoboost.png"
  },
  {
    name: "Taxes",
    description: "You can dip into other people's cakes/snacks for 1 day!",
    probability: 0.4,
    image_name: "taxes.png"
  },
  {
    name: "Joker",
    description: "Whatever happens, you've won, but the other player won't know until the end of the game!",
    probability: 0.05,
    image_name: "joker.png"
  },
  {
    name: "Tornado",
    description: "For one round of a duel and every 3 seconds, the opponent's answers are shuffled!",
    probability: 0.2,
    image_name: "tornado.png"
  },
  {
    name: "Hide & seek",
    description: "For one round of a duel, the opponent's screen turns off and on every 5 seconds!",
    probability: 0.2
  },
  {
    name: "Rainbow",
    description: "For one round of a duel, each letter of the opponent's answers has a different color!",
    probability: 0.6
  },
  {
    name: "Reversed",
    description: "For one round of a duel, the opponent's answers are reversed!",
    probability: 0.6
  },
  {
    name: "Timerr",
    description: "For one round of a duel, the opponent has only 8 seconds to respond!",
    probability: 0.6
  }
]

<<<<<<< HEAD
items = [
  {
    name: "Super croissant",
    description: "The player selected has to bring croissant for next breakfast!",
    probability: 0.05,
    image_name: "supercroissant.png"
  },
  {
    name: "Butler",
    description: "The player selected his your butler for one day!",
    probability: 0.2,
    image_name: "butler.png"
  },
  {
    name: "Swap",
    description: "You can give your place at the Livecode to whomever you wish!",
    probability: 0.2,
    image_name: "swap.png"
  },
  {
    name: "Golden ticket",
    description: "Your next ticket has priority over all other tickets!",
    probability: 0.6,
    image_name: "goldenticket.png"
  },
  {
    name: "Shut up",
    description: "The selected person must not speak for 10 minutes.",
    probability: 0.6,
    image_name: "shutup.png"
  },
  {
    name: "Walker",
    description: "The selected player must walk around the block!",
    probability: 0.6,
    image_name: "walker.png"
  },
  {
    name: "Keyword",
    description: "Every time you say your keyword, everyone has to stand up for 1 day!",
    probability: 0.05,
    image_name: "keyword.png"
  },
  {
    name: "R.E.S.P.E.C.T",
    description: "Everyone must be very polite to you for 1 day!",
    probability: 0.15,
    image_name: "respect.png"
  },
  {
    name: "Ola",
    description: "For a day, every time you enter a room, everyone has to do an ola!",
    probability: 0.15,
    image_name: "ola.png"
  },
  {
    name: "Ego Boost",
    description: "Everyone has to give you a compliment!",
    probability: 0.4,
    image_name: "egoboost.png"
  },
  {
    name: "Taxes",
    description: "You can dip into other people's cakes/snacks for 1 day!",
    probability: 0.4,
    image_name: "taxes.png"
  },
  {
    name: "Joker",
    description: "Whatever happens, you've won, but the other player won't know until the end of the game!",
    probability: 0.05,
    image_name: "joker.png"
  },
  {
    name: "Tornado",
    description: "For one round of a duel and every 3 seconds, the opponent's answers are shuffled!",
    probability: 0.2,
    image_name: "tornado.png"
  },
  {
    name: "Hide & seek",
    description: "For one round of a duel, the opponent's screen turns off and on every 5 seconds!",
    probability: 0.2
  },
  {
    name: "Rainbow",
    description: "For one round of a duel, each letter of the opponent's answers has a different color!",
    probability: 0.6
  },
  {
    name: "Reversed",
    description: "For one round of a duel, the opponent's answers are reversed!",
    probability: 0.6
  },
  {
    name: "Timerr",
    description: "For one round of a duel, the opponent has only 8 seconds to respond!",
    probability: 0.6
  }
]

# Itérer sur le tableau et créer chaque Item
items.each_with_index do |item_attributes, index|
  puts "[#{index+1}/#{items.size}] Creating item : #{item_attributes[:name]} 🔄"
=======
# Itérer sur le tableau et créer chaque Item
items.each_with_index do |item_attributes, index|
  puts "[#{index+1}/#{items.size}] Creating item : #{item_attributes[:name]} 🌱"
>>>>>>> master
  item = Item.create!(name: item_attributes[:name], description: item_attributes[:description], probability: item_attributes[:probability])
  if item_attributes[:image_name].present?
    puts "Upload image for item : #{item_attributes[:name]} 📸"
    image_path = Rails.root.join('db', 'images', item_attributes[:image_name])
    image_file = File.open(image_path)
    item.photo.attach(io: image_file, filename: item_attributes[:image_name], content_type: 'image/png')
    image_file.close
  end
end

item1 = Item.create!(name:"Super croissant", description:"The player selected has to bring croissant for next breakfast!", probability:"1")
item2 = Item.create!(name:"Butler", description:"The player selected his your butler for one Day!", probability:"1")


puts "Creating inventories... 🌱"
inventory1 = Inventory.create!(user: usertest, item: Item.all.sample)
inventory2 = Inventory.create!(user: usertest, item: Item.all.sample)
inventory3 = Inventory.create!(user: usertest2, item: Item.all.sample)

<<<<<<< HEAD
puts "Creating inventories... 🔄"
 inventory1 = Inventory.create!(user: usertest, item: Item.all.sample)
 inventory2 = Inventory.create!(user: usertest2, item: Item.all.sample)
 inventory3 = Inventory.create!(user: usertest3, item: Item.all.sample)
=======
>>>>>>> master

# inventory1 = Inventory.create!(user: usertest2, item: item1)
# inventory2 = Inventory.create!(user: usertest, item: item2)
# inventory3 = Inventory.create!(user: usertest2, item: item2)

puts ""
puts "Finished! 🌱"
puts ""

puts ""
puts "-------- SEEDS CREATED : GG! 🥳 --------"
puts ""
