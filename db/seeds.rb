require 'faker'

puts ""
puts "-------- STEP 1 : DESTROYING ALL 💀 --------"
puts ""

puts "Destroying roundsQuestionAnswers... 💀"
RoundQuestionAnswer.destroy_all
puts "Destroying rounds... 💀"
Round.destroy_all
puts "Destroying duels... 💀"
Duel.destroy_all
puts "Destroying trainings... 💀"
Training.destroy_all
puts "Destroying trainingsAnswers... 💀"
TrainingAnswer.destroy_all


puts "Destroying possibilities... 💀"
Possibility.destroy_all
puts "Destroying questions... 💀"
Question.destroy_all
puts "Destroying lessons... 💀"
Lesson.destroy_all
puts "Destroying subcategories... 💀"
Subcategory.destroy_all
puts "Destroying categories... 💀"
Category.destroy_all
puts "Destroying inventories... 💀"
Inventory.destroy_all
puts "Destroying items...💀"
Item.destroy_all
puts "Destroying users... 💀"
User.destroy_all

puts ""
puts "Finished! 💀"
puts ""

puts ""
puts "-------- STEP 2 : CREATING ALL 🌱 --------"
puts ""

puts "Creating categories... 🌱"
cat_ruby = Category.create(name:"Ruby")
cat_oop = Category.create(name: "OOP")
cat_db = Category.create(name: "DB")
cat_front = Category.create(name: "Front")
cat_rails = Category.create(name: "Rails")
cat_project = Category.create(name: "Project")

puts "Creating subcategories... 🌱"
sub_ruby = Subcategory.create(name: "Programming Basics", content:"Play with IRB and launch a Ruby script from the terminal. Learn about variables, methods and built-in classes.", category: cat_ruby)
sub_ruby2 = Subcategory.create(name: "Flow, Conditionals & Arrays", content:"Learn about conditional statements and loops, coding structures that modify the flow of your programs. Discover and play with arrays.", category: cat_ruby)
sub_ruby3 = Subcategory.create(name: "Iterators & Blocks", content:"Embrace all the cool Ruby iterators (each, select, map and more). Understand what a Ruby block is and how a method can call a block with yield.", category: cat_ruby)
sub_ruby4 = Subcategory.create(name: "Hash & Symbols", content:"Discover and play with hashes, data structures designed to store key-value pairs like dictionaries. Understand symbols, objects a bit similar to strings but more adapted for storing identifiers. Symbols are very often used as hash keys.", category: cat_ruby)
sub_oop = Subcategory.create(name: "Classes & Instances", content:"So far, you’ve played with lots of built-in objects in Ruby (Integer, Hash, Date, etc.). But what about defining your own classes? During this first block you’ll learn to manipulate classes, instances, instance variables and instance methods. You’ll also learn about constructors and accessors. Let’s build your first classes!", category: cat_oop)
sub_oop2 = Subcategory.create(name: "Inheritance & Self", content:"More advanced OOP concepts, such as inheritance, class methods, and the meaning of the self keyword.", category: cat_oop)
sub_db = Subcategory.create(name: "DB & SQL", content:"Time to learn about relational databases, discover the different relationships between tables (1:n, n:n) and how to draw a database scheme. Then, we’ll get started on SQL.", category: cat_db)
sub_db2 = Subcategory.create(name: "Active Record Basics", content:"Active Record is a powerful Ruby library to connect your object to a database. Active Record is one of the core library in Rails. Discover how an Active Record model is magically linked to a table thanks to a simple naming convention. That’s Active Record magic!", category: cat_db)
sub_db3 = Subcategory.create(name: "Associations & Validations", content:"Time to go deeper into Active Record and learn about validations and associations.", category: cat_db)


puts "Creating users... 🌱"
# 10.times do
#   user = User.create!(
#         email: Faker::Internet.email,
#         password: Faker::Number.number(digits: 6), #=> 196835
#         first_name: Faker::JapaneseMedia::OnePiece.character,
#         last_name: Faker::JapaneseMedia::OnePiece.sea,
#         gold_count: Faker::Number.number(digits: 2), #=> 19
#         experience: Faker::Number.number(digits: 3) #=> 196
#       )
# end

usertest1 = User.create!(
  email: "test@test.com",
  password: "123456",
  first_name: "Toto",
  last_name: "Lezozo",
  gold_count: 10,
  experience: 50
)
usertest2 = User.create!(
  email: "lynn@test.com",
  password: "123456",
  first_name: "Lynn",
  last_name: "Telia",
  gold_count: 20000,
  experience: 999
)

# usertest3 = User.create!(
#   email: "chloe@test.com",
#   password: "123456",
#   first_name: "Chloe",
#   last_name: "test",
#   gold_count: 50,
#   experience: 500
# )


# ////////////////////////
# user qu'on utilisera pour la démo donc faudra faire en fonction des besoin
user0 = User.create!(
  email: "valentin@test.com",
  password: "123456",
  first_name: "Valentin",
  last_name: "Courtin",
  gold_count: 500,
  experience: 170
)

user1 = User.create!(
  email: "chloeb@test.com",
  password: "123456",
  first_name: "Chloé",
  last_name: "Bourgeois",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user2 = User.create!(
  email: "clarisse@test.com",
  password: "123456",
  first_name: "Clarisse",
  last_name: "Fabreges",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user3 = User.create!(
  email: "pierre@test.com",
  password: "123456",
  first_name: "Pierre",
  last_name: "Libran",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user4 = User.create!(
  email: "kevin@test.com",
  password: "123456",
  first_name: "Kévin",
  last_name: "Rossi",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user5 = User.create!(
  email: "amandine@test.com",
  password: "123456",
  first_name: "Amandine",
  last_name: "Porte",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user6 = User.create!(
  email: "santino@test.com",
  password: "123456",
  first_name: "Santino",
  last_name: "Doucet",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user7 = User.create!(
  email: "Ji-fang@test.com",
  password: "123456",
  first_name: "Ji-Fang",
  last_name: "Lo",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)

user8 = User.create!(
  email: "Nico@test.com",
  password: "123456",
  first_name: "Nicolas",
  last_name: "Iniesta",
  gold_count: Faker::Number.number(digits: 2), #=> 0 to 99
  experience: Faker::Number.number(digits: 3) #=> 100 to 999
)



puts ""
puts "Finished! 🌱"
puts ""

puts ""
puts "---- STEP 3 : CREATING ITEMS & INVENTORIES 🌱 ----"
puts ""

puts "Creating items... 🌱"
puts ""

items = [
  {
    name: "Super croissant",
    description: "The player selected has to bring croissant for next breakfast!",
    probability: 0.05,
    image_name: "supercroissant.png",
    category: "single"
  },
  {
    name: "Butler",
    description: "The player selected is your butler for one day!",
    probability: 0.2,
    image_name: "butler.png",
    category: "single"
  },
  {
    name: "Shut up",
    description: "The selected person must not speak for 10 minutes.",
    probability: 0.6,
    image_name: "shutup.png",
    category: "single"
  },
  {
    name: "Walker",
    description: "The selected player must walk around the block!",
    probability: 0.6,
    image_name: "walker.png",
    category: "single"
  },
  {
    name: "Swap",
    description: "You can give your place at the Livecode to whomever you wish!",
    probability: 0.2,
    image_name: "swap.png",
    category: "single"
  },
  {
    name: "Golden ticket",
    description: "Your next ticket has priority over all other tickets!",
    probability: 0.6,
    image_name: "goldenticket.png",
    category: "group"
  },

  {
    name: "Keyword",
    description: "Every time you say your keyword, everyone has to stand up for 1 day!",
    probability: 0.05,
    image_name: "keyword.png",
    category: "group"
  },
  {
    name: "R.E.S.P.E.C.T",
    description: "Everyone must be very polite to you for 1 day!",
    probability: 0.15,
    image_name: "respect.png",
    category: "group"
  },
  {
    name: "Ola",
    description: "For a day, every time you enter a room, everyone has to do an ola!",
    probability: 0.15,
    image_name: "ola.png",
    category: "group"
  },
  {
    name: "Ego Boost",
    description: "Everyone has to give you a compliment!",
    probability: 0.4,
    image_name: "egoboost.png",
    category: "group"
  },
  {
    name: "Taxes",
    description: "You can dip into other people's cakes/snacks for 1 day!",
    probability: 0.4,
    image_name: "taxes.png",
    category: "group"
  },
  {
    name: "Joker",
    description: "Whatever happens, you've won, but the other player won't know until the end of the game!",
    probability: 0.05,
    image_name: "joker.png",
    category: "duel"
  },
  {
    name: "Tornado",
    description: "For one round of a duel and every 3 seconds, the opponent's answers are shuffled!",
    probability: 0.2,
    image_name: "tornado.png",
    category: "duel"
  },
  {
    name: "Day and night",
    description: "For one round of a duel, the opponent's screen turns off and on every 5 seconds!",
    probability: 0.2,
    image_name: "daynight.png",
    category: "duel"
  },
  {
    name: "Rainbow",
    description: "For one round of a duel, each letter of the opponent's answers has a different color!",
    probability: 0.6,
    image_name: "rainbow.png",
    category: "duel"
  },
  {
    name: "Reversed",
    description: "For one round of a duel, the opponent's answers are reversed!",
    probability: 0.6,
    image_name: "reversed.png",
    category: "duel"
  },
  {
    name: "Timer",
    description: "For one round of a duel, the opponent has only 8 seconds to respond!",
    probability: 0.6,
    image_name: "timer.png",
    category: "duel"
  }
]

# Itérer sur le tableau et créer chaque Item
items.each_with_index do |item_attributes, index|
  puts "[#{index+1}/#{items.size}] Creating item : #{item_attributes[:name]} 🌱"
  item = Item.create!(name: item_attributes[:name], description: item_attributes[:description], probability: item_attributes[:probability], category: item_attributes[:category])
    if item_attributes[:image_name].present?
      puts "Upload image for item : #{item_attributes[:name]} 📸"
      image_path = Rails.root.join('db', 'images', item_attributes[:image_name])
      image_file = File.open(image_path)
      item.photo.attach(io: image_file, filename: item_attributes[:image_name], content_type: 'image/png')
      image_file.close
    end
end

# item1 = Item.create!(name:"Super croissant", description:"The player selected has to bring croissant for next breakfast!", probability:"1")
# item2 = Item.create!(name:"Butler", description:"The player selected is your butler for one Day!", probability:"1")


puts "Creating inventories... 🌱"
usertest1.items << Item.all.sample(5)
usertest2.items << Item.all.sample(18)
usertest3.items << Item.all.sample(0)


# inventory1 = Inventory.create!(user: usertest2, item: item1)
# inventory2 = Inventory.create!(user: usertest, item: item2)
# inventory3 = Inventory.create!(user: usertest2, item: item2)

puts ""
puts "Finished! 🌱"
puts ""

puts ""
puts "---- STEP 4 : CREATING QUESTIONS & POSSIBILITIES 🌱 ----"
puts ""

puts "Creating questions & possibilities... 🌱"
puts ""

questions = [
  {
    content: "How do you start an IRB session in the terminal?",
    explication: "Irb is the command used to launch Ruby's interactive environment in the terminal.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "start irb",
        correct: false
      },
      {
        content: "ruby irb",
        correct: false
      },
      {
        content: "irb",
        correct: true
      },
      {
        content: "run irb",
        correct: false
      }
    ]
  },
  {
    content: "Which command do you use to run a Ruby script called app.rb?",
    explication: "Ruby app.rb is the standard command to run a Ruby script.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "ruby app.rb",
        correct: true
      },
      {
        content: "run app.rb",
        correct: false
      },
      {
        content: "execute app.rb",
        correct: false
      },
      {
        content: "ruby -run app.rb",
        correct: false
      }
    ]
  },
  {
    content: "How do you define a variable in Ruby?",
    explication: "In Ruby, variables are defined simply by assigning a value with = without prior type declaration.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "let x = 10",
        correct: false
      },
      {
        content: "x = 10",
        correct: true
      },
      {
        content: "define x = 10",
        correct: false
      },
      {
        content: "var x = 10",
        correct: false
      }
    ]
  },
  {
    content: "What syntax is used to define a method in Ruby?",
    explication: "In Ruby, methods are defined with def followed by the method name and end to close the definition.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "def method_name; ...; end",
        correct: true
      },
      {
        content: "function method_name() {...}",
        correct: false
      },
      {
        content: "def method_name(...) { ... }",
        correct: false
      },
      {
        content: "def method_name(...) end",
        correct: false
      }
    ]
  },
  {
    content: "Which Ruby class is used to handle strings?",
    explication: "The String class in Ruby is used to handle strings.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "Array",
        correct: false
      },
      {
        content: "String",
        correct: true
      },
      {
        content: "Hash",
        correct: false
      },
      {
        content: "Symbol",
        correct: false
      }
    ]
  },
  {
    content: "What is the output of puts \"Hello, \#\{name\}\" if name = \"Alice\"?",
    explication: "String interpolation with \#\{...\} allows inserting the value of a variable into a string.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "Hello, Alice",
        correct: true
      },
      {
        content: "Hello, \#\{name\}",
        correct: false
      },
      {
        content: "Hello, name",
        correct: false
      },
      {
        content: "Hello, nil",
        correct: false
      }
    ]
  },
  {
    content: "Which method in the String class returns the length of the string?",
    explication: "Length is a method in the String class that returns the number of characters in the string.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "size",
        correct: false
      },
      {
        content: "length",
        correct: true
      },
      {
        content: "count",
        correct: false
      },
      {
        content: "chars",
        correct: false
      }
    ]
  },
  {
    content: "How do you store a numeric value in a variable?",
    explication: "In Ruby, variables are declared by directly assigning a value without specifying the type.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "var num = 10",
        correct: false
      },
      {
        content: "num = 10",
        correct: true
      },
      {
        content: "let num = 10",
        correct: false
      },
      {
        content: "int num = 10",
        correct: false
      }
    ]
  },
  {
    content: "What keyword do you use to create a reusable block of code in Ruby?",
    explication: "Def is the keyword used in Ruby to define a method, which is a reusable block of code.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "def",
        correct: true
      },
      {
        content: "function",
        correct: false
      },
      {
        content: "method",
        correct: false
      },
      {
        content: "block",
        correct: false
      }
    ]
  },
  {
    content: "How do you print the string \"Bonjour, monde !\" in Ruby?",
    explication: "Puts is used to display a string with a new line at the end.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "print \"Bonjour, monde !\"",
        correct: false
      },
      {
        content: "puts \"Bonjour, monde !\"",
        correct: true
      },
      {
        content: "echo \"Bonjour, monde !\"",
        correct: false
      },
      {
        content: "printf \"Bonjour, monde !\"",
        correct: false
      }
    ]
  },
  {
    content: "What happens if you try to access an undefined variable in Ruby?",
    explication: "In Ruby, accessing an undefined variable raises a NameError.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "0 is returned",
        correct: false
      },
      {
        content: "nil is returned",
        correct: false
      },
      {
        content: "An error is raised",
        correct: true
      },
      {
        content: "The variable is automatically set to nil",
        correct: false
      }
    ]
  },
  {
    content: "How do you call a greet method defined as def greet(name) in Ruby?",
    explication: "Methods in Ruby are called using their name followed by parentheses containing the arguments, if necessary.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "greet[name]",
        correct: false
      },
      {
        content: "greet.name",
        correct: false
      },
      {
        content: "greet(\"Alice\")",
        correct: true
      },
      {
        content: "call greet(\"Alice\")",
        correct: false
      }
    ]
  },
  {
    content: "Which String method converts all characters to uppercase?",
    explication: "The upcase method converts all characters in a string to uppercase.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "upcase",
        correct: true
      },
      {
        content: "capitalize",
        correct: false
      },
      {
        content: "uppercase",
        correct: false
      },
      {
        content: "to_upper",
        correct: false
      }
    ]
  },
  {
    content: "What is the result of 5 + \"10\" in Ruby?",
    explication: "Ruby does not allow adding a number to a string, which raises a TypeError.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "15",
        correct: false
      },
      {
        content: "510",
        correct: false
      },
      {
        content: "An error",
        correct: true
      },
      {
        content: "5",
        correct: false
      }
    ]
  },
  {
    content: "How do you stop an IRB session?",
    explication: "You can exit IRB by typing exit, quit, or using Ctrl + D.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "exit",
        correct: true
      },
      {
        content: "quit",
        correct: true
      },
      {
        content: "Ctrl + D",
        correct: true
      }
    ]
  },
  {
    content: "Which structure do you use to execute code only if a condition is true?",
    explication: "The if structure is used to execute code only if a given condition is true.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "if",
        correct: true
      },
      {
        content: "while",
        correct: false
      },
      {
        content: "for",
        correct: false
      },
      {
        content: "loop",
        correct: false
      }
    ]
  },
  {
    content: "What Ruby keyword allows you to test a condition after executing a block of code, i.e., execute the block as long as the condition is false?",
    explication: "Until executes a block of code as long as the specified condition is false.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "while",
        correct: false
      },
      {
        content: "until",
        correct: true
      },
      {
        content: "for",
        correct: false
      },
      {
        content: "if",
        correct: false
      }
    ]
  },
  {
    content: "What is the value of arr = [1, 2, 3]; arr[2]?",
    explication: "Array indices in Ruby start at 0, so arr[2] returns the third element of the array, which is 3.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "1",
        correct: false
      },
      {
        content: "2",
        correct: false
      },
      {
        content: "3",
        correct: true
      },
      {
        content: "nil",
        correct: false
      }
    ]
  },
  {
    content: "What keyword is used to prematurely exit a loop?",
    explication: "Break is used to immediately exit a loop, regardless of the remaining conditions.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "exit",
        correct: false
      },
      {
        content: "stop",
        correct: false
      },
      {
        content: "break",
        correct: true
      },
      {
        content: "end",
        correct: false
      }
    ]
  },
  {
    content: "Which method adds an element to the end of an array?",
    explication: "The push method adds a new element to the end of an array.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "push",
        correct: true
      },
      {
        content: "pop",
        correct: false
      },
      {
        content: "shift",
        correct: false
      },
      {
        content: "unshift",
        correct: false
      }
    ]
  },
  {
    content: "How do you call a block of code that repeats as long as a condition remains true?",
    explication: "The while loop continues to execute as long as the specified condition remains true.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "for",
        correct: false
      },
      {
        content: "while",
        correct: true
      },
      {
        content: "if",
        correct: false
      },
      {
        content: "case",
        correct: false
      }
    ]
  },
  {
    content: "What is the output of the following expression: arr = [1, 2, 3]; arr.pop?",
    explication: "The pop method removes and returns the last element of the array, here 3.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "1",
        correct: false
      },
      {
        content: "2",
        correct: false
      },
      {
        content: "3",
        correct: true
      },
      {
        content: "nil",
        correct: false
      }
    ]
  },
  {
    content: "Which structure is used to iterate over each element of an array?",
    explication: "Each is commonly used to iterate over each element of an array.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "for",
        correct: false
      },
      {
        content: "while",
        correct: false
      },
      {
        content: "loop",
        correct: false
      },
      {
        content: "each",
        correct: true
      }
    ]
  },
  {
    content: "What keyword do you use to handle multiple conditions in Ruby?",
    explication: "The case keyword in Ruby is used to evaluate a variable against multiple values.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "switch",
        correct: false
      },
      {
        content: "case",
        correct: true
      },
      {
        content: "if",
        correct: false
      },
      {
        content: "elsif",
        correct: false
      }
    ]
  },
  {
    content: "Which loop is best suited to execute a block of code a specific number of times?",
    explication: "The for loop is ideal for executing a block of code a specific number of times, usually over a range or collection.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "for",
        correct: true
      },
      {
        content: "while",
        correct: false
      },
      {
        content: "until",
        correct: false
      },
      {
        content: "loop",
        correct: false
      }
    ]
  },
  {
    content: "How do you access the first element of an array called arr?",
    explication: "The first element of an array is accessed via index 0, so arr[0].",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "arr[1]",
        correct: false
      },
      {
        content: "arr.first",
        correct: false
      },
      {
        content: "arr.last",
        correct: false
      },
      {
        content: "arr[0]",
        correct: true
      }
    ]
  },
  {
    content: "Which control structure executes a block of code if a condition is false?",
    explication: "Unless executes a block of code only if the specified condition is false.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "unless",
        correct: true
      },
      {
        content: "if",
        correct: false
      },
      {
        content: "case",
        correct: false
      },
      {
        content: "while",
        correct: false
      }
    ]
  },
  {
    content: "How do you replace an element in an array in Ruby?",
    explication: "You can replace an element in an array by assigning a new value to a specific index, such as array[index] = value.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "array.set(index, value)",
        correct: false
      },
      {
        content: "array[index] = value",
        correct: true
      },
      {
        content: "array.replace(index, value)",
        correct: false
      },
      {
        content: "array.change(index, value)",
        correct: false
      }
    ]
  },
  {
    content: "Which method removes and returns the first element of an array?",
    explication: "The shift method removes and returns the first element of an array.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "pop",
        correct: false
      },
      {
        content: "shift",
        correct: true
      },
      {
        content: "unshift",
        correct: false
      },
      {
        content: "delete",
        correct: false
      }
    ]
  },
  {
    content: "How do you add an element to the beginning of an array?",
    explication: "Unshift adds an element to the beginning of an array.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "push",
        correct: false
      },
      {
        content: "shift",
        correct: false
      },
      {
        content: "unshift",
        correct: true
      },
      {
        content: "prepend",
        correct: false
      }
    ]
  },
  {
    content: "Which method is used to iterate over each element of an array in Ruby?",
    explication: "Each is the most common iterator in Ruby to go through each element of an array or collection.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "map",
        correct: false
      },
      {
        content: "each",
        correct: true
      },
      {
        content: "select",
        correct: false
      },
      {
        content: "yield",
        correct: false
      }
    ]
  },
  {
    content: "How do you pass a block of code to a method in Ruby?",
    explication: "Blocks of code in Ruby are passed to a method with {} for short blocks or do...end for longer blocks.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "Use yield.",
        correct: false
      },
      {
        content: "Pass it in parentheses.",
        correct: false
      },
      {
        content: "Use braces {} or do...end.",
        correct: true
      },
      {
        content: "Use the block keyword.",
        correct: false
      }
    ]
  },
  {
    content: "What does the select method return when used on an array?",
    explication: "Select returns a new array containing only the elements for which the block of code returned true.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "The elements for which the block returns false.",
        correct: false
      },
      {
        content: "The elements for which the block returns true.",
        correct: true
      },
      {
        content: "A reversed array.",
        correct: false
      },
      {
        content: "The original array without changes.",
        correct: false
      }
    ]
  },
  {
    content: "Which method returns an array with the elements that do not satisfy the block's condition?",
    explication: "Reject does the opposite of select, it returns the elements for which the condition is false.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "reject",
        correct: true
      },
      {
        content: "select",
        correct: false
      },
      {
        content: "filter",
        correct: false
      },
      {
        content: "map",
        correct: false
      }
    ]
  },
  {
    content: "What is the output of the following code? [1, 2, 3].map { |n| n * 2 }",
    explication: "The code applies n * 2 to each element of the array and returns [2, 4, 6].",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "[1, 2, 3]",
        correct: false
      },
      {
        content: "[2, 4, 6]",
        correct: true
      },
      {
        content: "[2, 3, 4]",
        correct: false
      },
      {
        content: "nil",
        correct: false
      }
    ]
  },
  {
    content: "Which method ensures that a block is present before using yield?",
    explication: "block_given? checks if a block was passed to the method before using yield.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "block_given?",
        correct: true
      },
      {
        content: "block_exists?",
        correct: false
      },
      {
        content: "block?",
        correct: false
      },
      {
        content: "has_block?",
        correct: false
      }
    ]
  },
  {
    content: "What is the result of the following code? 3.times { |i| puts i }",
    explication: "Times iterates 3 times, each time passing the current index to the block, here 0, 1, and 2.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "012",
        correct: true
      },
      {
        content: "0 1 2",
        correct: false
      },
      {
        content: "1 2 3",
        correct: false
      },
      {
        content: "2 1 0",
        correct: false
      }
    ]
  },
  {
    content: "What does the find method return?",
    explication: "Find returns the first matching element or nil if there are no elements that satisfy the condition.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "An array with all matching elements.",
        correct: false
      },
      {
        content: "The first element that satisfies the condition.",
        correct: true
      },
      {
        content: "nil if no elements match.",
        correct: true
      },
      {
        content: "Both B and C.",
        correct: false
      }
    ]
  },
  {
    content: "What is the output of this code? result = [10, 20, 30].select { |n| n > 15 } puts result",
    explication: "Select filters the array elements, keeping only those greater than 15, so [20, 30].",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "[10]",
        correct: false
      },
      {
        content: "[10, 20]",
        correct: false
      },
      {
        content: "[20, 30]",
        correct: true
      },
      {
        content: "nil",
        correct: false
      }
    ]
  },
  {
    content: "How do you write a block that takes two parameters?",
    explication: "A block in Ruby taking two parameters is written as { |param1, param2| ... } or do |param1, param2| ... end.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "|param1 param2|",
        correct: false
      },
      {
        content: "param1, param2 ->",
        correct: false
      },
      {
        content: "{ |param1, param2| ... }",
        correct: true
      },
      {
        content: "do param1, param2",
        correct: false
      }
    ]
  },
  {
    content: "What happens if you try to use yield without passing a block?",
    explication: "Calling yield without passing a block raises a LocalJumpError exception.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "The method continues without executing yield.",
        correct: false
      },
      {
        content: "An error is raised.",
        correct: true
      },
      {
        content: "yield returns nil.",
        correct: false
      },
      {
        content: "The program stops.",
        correct: false
      }
    ]
  },
  {
    content: "Which method is best suited to transform all elements of an array by applying an operation to each of them?",
    explication: "Map is designed to transform each element of an array by applying an operation and returning a new array.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "each",
        correct: false
      },
      {
        content: "map",
        correct: true
      },
      {
        content: "select",
        correct: false
      },
      {
        content: "reject",
        correct: false
      }
    ]
  },
  {
    content: "Which method is used to iterate over each element of an array in Ruby?",
    explication: "Each is the most common iterator in Ruby to go through each element of an array or collection.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "map",
        correct: false
      },
      {
        content: "each",
        correct: true
      },
      {
        content: "select",
        correct: false
      },
      {
        content: "yield",
        correct: false
      }
    ]
  },
  {
    content: "How do you pass a block of code to a method in Ruby?",
    explication: "Blocks of code in Ruby are passed to a method with {} for short blocks or do...end for longer blocks.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "Use yield.",
        correct: false
      },
      {
        content: "Pass it in parentheses.",
        correct: false
      },
      {
        content: "Use braces {} or do...end.",
        correct: true
      },
      {
        content: "Use the block keyword.",
        correct: false
      }
    ]
  },
  {
    content: "What does the yield keyword do in a method?",
    explication: "Yield executes the block of code passed to the method, allowing external code to be inserted into the method's body.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "It stops the method execution.",
        correct: false
      },
      {
        content: "It executes the block of code passed to the method.",
        correct: true
      },
      {
        content: "It raises an exception.",
        correct: false
      },
      {
        content: "It returns a default value.",
        correct: false
      }
    ]
  },
  {
    content: "What is the difference between map and each?",
    explication: "Map transforms each element and returns a new array, while each simply iterates without returning a new array.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "each modifies the array elements in place, map leaves them intact.",
        correct: false
      },
      {
        content: "map returns a new array, each returns nothing.",
        correct: true
      },
      {
        content: "map only works with strings.",
        correct: false
      },
      {
        content: "There is no difference.",
        correct: false
      }
    ]
  },
  {
    content: "Which method returns an array with the elements that do not satisfy the block's condition?",
    explication: "Reject does the opposite of select, it returns the elements for which the condition is false.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "reject",
        correct: true
      },
      {
        content: "select",
        correct: false
      },
      {
        content: "filter",
        correct: false
      },
      {
        content: "map",
        correct: false
      }
    ]
  },
  {
    content: "How do you specify the parameters of a block in Ruby?",
    explication: "The parameters of a block are placed between | | and represent the elements passed to the block by the iterator.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "By using yield.",
        correct: false
      },
      {
        content: "By passing them directly after do.",
        correct: false
      },
      {
        content: "By placing them between | | in the block.",
        correct: true
      },
      {
        content: "By declaring them in the method.",
        correct: false
      }
    ]
  },
  {
    content: "What is the output of the following code? [1, 2, 3].map { |n| n * 2 }",
    explication: "The code applies n * 2 to each element of the array and returns [2, 4, 6].",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "[1, 2, 3]",
        correct: false
      },
      {
        content: "[2, 4, 6]",
        correct: true
      },
      {
        content: "[2, 3, 4]",
        correct: false
      },
      {
        content: "nil",
        correct: false
      }
    ]
  },
  {
    content: "Which method ensures that a block is present before using yield?",
    explication: "block_given? checks if a block was passed to the method before using yield.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "block_given?",
        correct: true
      },
      {
        content: "block_exists?",
        correct: false
      },
      {
        content: "block?",
        correct: false
      },
      {
        content: "has_block?",
        correct: false
      }
    ]
  },
  {
    content: "What is the result of the following code? 3.times { |i| puts i }",
    explication: "Times iterates 3 times, each time passing the current index to the block, here 0, 1, and 2.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "012",
        correct: true
      },
      {
        content: "0 1 2",
        correct: false
      },
      {
        content: "1 2 3",
        correct: false
      },
      {
        content: "2 1 0",
        correct: false
      }
    ]
  },
  {
    content: "What does the find method return?",
    explication: "Find returns the first matching element or nil if there are no elements that satisfy the condition.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "An array with all matching elements.",
        correct: false
      },
      {
        content: "The first element that satisfies the condition.",
        correct: true
      },
      {
        content: "nil if no elements match.",
        correct: true
      },
      {
        content: "Both B and C.",
        correct: false
      }
    ]
  },
  {
    content: "What is the output of this code? result = [10, 20, 30].select { |n| n > 15 } puts result",
    explication: "Select filters the array elements, keeping only those greater than 15, so [20, 30].",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "[10]",
        correct: false
      },
      {
        content: "[10, 20]",
        correct: false
      },
      {
        content: "[20, 30]",
        correct: true
      },
      {
        content: "nil",
        correct: false
      }
    ]
  },
  {
    content: "How do you write a block that takes two parameters?",
    explication: "A block in Ruby taking two parameters is written as { |param1, param2| ... } or do |param1, param2| ... end.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "|param1 param2|",
        correct: false
      },
      {
        content: "param1, param2 ->",
        correct: false
      },
      {
        content: "{ |param1, param2| ... }",
        correct: true
      },
      {
        content: "do param1, param2",
        correct: false
      }
    ]
  },
  {
    content: "What happens if you try to use yield without passing a block?",
    explication: "Calling yield without passing a block raises a LocalJumpError exception.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "The method continues without executing yield.",
        correct: false
      },
      {
        content: "An error is raised.",
        correct: true
      },
      {
        content: "yield returns nil.",
        correct: false
      },
      {
        content: "The program stops.",
        correct: false
      }
    ]
  },
  {
    content: "Which method is best suited to transform all elements of an array by applying an operation to each of them?",
    explication: "Map is designed to transform each element of an array by applying an operation and returning a new array.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "each",
        correct: false
      },
      {
        content: "map",
        correct: true
      },
      {
        content: "select",
        correct: false
      },
      {
        content: "reject",
        correct: false
      }
    ]
  }
]

questions.each_with_index do |question, index|
  puts "[#{index+1}/#{questions.size}] Creating question: #{question[:content]}... 🌱"
  subcategory = Subcategory.find_by(name: question[:subcategory])
  question_i = Question.create!(
    content: question[:content],
    explication: question[:explication],
    subcategory: subcategory
  )

  question[:possibilities].each do |possibility|
    puts " - Creating possibilities: #{possibility[:content]}..."
    Possibility.create!(
      content: possibility[:content],
      correct: possibility[:correct],
      question: question_i
    )
  end
end

puts ""
puts "Finished! 🌱"
puts ""

puts ""
puts "---- STEP 5 : CREATING LESSONS 🌱 ----"
puts ""

lessons = [
  {
    content: 'Course Recap:
    In this subcategory, you will learn to use IRB (Interactive Ruby), a shell for interacting directly with Ruby. You will also learn how to run a Ruby script from the terminal. Here are the key concepts to remember:',
    subcategory: sub_ruby
  },
  {
    content: 'Variables:
        A variable is a way to store a value for later use.
        In Ruby, variables are dynamically typed (you don\'t need to declare the type).
        Example: name = "Alice" assigns the value "Alice" to the variable name.',
    subcategory: sub_ruby
  },
  {
    content: 'Methods:
        Methods are blocks of code that you can call at any time to perform a specific task.
        Definition: def method_name(arguments) ... end
        Example:
        ruby
          def greet(name)
            "Hello, #{name}!"
          end',
    subcategory: sub_ruby
  },
  {
    content: 'Built-in Classes:
    Ruby provides several built-in classes like String, Array, Hash, etc.
    These classes offer many useful methods to manipulate data.',
    subcategory: sub_ruby
  },
  {
    content: 'Running a Ruby Script:
    To run a Ruby script, create a file with the .rb extension, for example, script.rb.
    Run the script in the terminal with the command: ruby script.rb.',
    subcategory: sub_ruby
  },
  {
    content: 'Ruby Subcategory 2: Flow, Conditionals & Arrays
      Course Recap:
      In this subcategory, we will cover flow control structures, such as conditional statements and loops, which change the flow of your programs. You will also learn about arrays and how to manipulate them.',
    subcategory: sub_ruby2
  },
  {
    content: 'Conditional Statements:
      These allow you to execute code based on certain conditions.
      if, elsif, else: allow you to choose between multiple blocks of code based on a condition.
      unless: executes a block of code only if a condition is false.
      case / when: an alternative to if for testing multiple conditions.
        Example:
        if x > 10
          puts "x is greater than 10"
        elsif x == 10
          puts "x is equal to 10"
        else
          puts "x is less than 10"
        end',
    subcategory: sub_ruby2
  },
  {
    content: 'Loops:
      Allow you to repeat a block of code multiple times.
      while: executes a block of code as long as a condition is true.
      until: executes a block of code as long as a condition is false.
      for: iterates over a range or an array of elements.
      loop: executes a block of code indefinitely until a stopping condition is met (use break to stop).
      Example:
        i = 0
        while i < 5
          puts i
          i += 1
        end',
    subcategory: sub_ruby2
  },
  {
    content: 'Arrays:
    An array is an ordered collection of indexed values.
    Elements are accessed by their index, starting at 0.
    Arrays can contain elements of different types.
    Example:
      array = [1, "two", 3.0]
      puts array[1]  # "two"',
    subcategory: sub_ruby2
  },
  {
    content: 'Common Methods:
    push: adds an element to the end of the array.
    pop: removes the last element from the array.
    shift: removes the first element from the array.
    unshift: adds an element to the beginning of the array.
    each: iterates over each element of the array.',
    subcategory: sub_ruby2
  },
  {
    content: 'Course Recap:
    In this subcategory, you will discover iterators and blocks in Ruby. Iterators are methods that traverse the elements of a collection, such as an array, and execute a block of code for each element. Blocks are pieces of code enclosed between curly braces {} or between do...end, which can be passed to a method.',
    subcategory: sub_ruby3
  },
  {
    content: 'Iterators:
    each: Iterates over each element of a collection (array, hash, etc.) and executes a block of code for each element.
    map: Transforms each element of a collection by applying a block of code and returns a new array with the results.
    select: Filters the elements of a collection according to a condition defined in a block of code and returns a new array with the elements that satisfy this condition.
    reject: Does the opposite of select, returning the elements that do not satisfy the condition.
      Example:
        numbers = [1, 2, 3, 4, 5]
        squares = numbers.map { |n| n * n }',
    subcategory: sub_ruby3
  },
  {
    content: 'Blocks:
    A block is a piece of code passed to a method.
    Blocks can be defined with {} for short blocks or do...end for longer blocks.
    Blocks can take parameters, between | |, which represent the elements the block iterates over.
      Example:
        5.times do |i|
          puts "This is iteration number #{i}"
        end',
    subcategory: sub_ruby3
  },
  {
    content: 'The yield Keyword:
    yield allows a method to execute the block of code that is passed to it.
    You can use yield to insert the block of code passed to the method at a specific point within the method.
      Example:
        def greet
          puts "Hello"
          yield if block_given?
          puts "Goodbye"
        end
        greet { puts "Nice to meet you!" }',
    subcategory: sub_ruby3
  },
  {
    content: 'Hashes:
    A hash is a data structure that stores key-value pairs. Unlike arrays, the elements of a hash are not ordered by numeric index but by keys.
    Key: An object (often a symbol or a string) used to access the associated value.
    Value: The object associated with a key in a hash.
      Syntax:
      hash = { key1: "value1", key2: "value2" }

      Accessing Values:
      hash[:key1]  # => "value1"

    Common Methods:
      keys: returns all the keys in the hash.
      values: returns all the values in the hash.
      each: iterates over each key-value pair.',
    subcategory: sub_ruby4
  },
  {
    content: 'Symbols:
    A symbol is an immutable object often used as an identifier or key in a hash.
    Symbols are created with : followed by the symbol name, e.g., :my_symbol.
    Symbols are lighter than strings because they do not change and are reused.
    Comparison with strings: while a string is a different object each time it is created, a symbol is the same object each time it is referenced.',
    subcategory: sub_ruby4
  },
  {
    content: 'Using Symbols as Hash Keys:
    It is common to use symbols as keys in a hash for their performance and immutability.
      Example:
        person = { name: "Alice", age: 30 }',
    subcategory: sub_ruby4
  }
]

lessons.each_with_index do |lesson, index|
  puts "[#{index+1}/#{lessons.size}] Creating lesson... 🌱"
  lesson = Lesson.create!(
    content: lesson[:content],
    subcategory: lesson[:subcategory]
  )
end

puts ""
puts "Finished! 🌱"
puts ""

puts ""
puts "-------- SEEDS CREATED : GG! 🥳 --------"
puts ""
puts ""
