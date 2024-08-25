require 'faker'

puts ""
puts "-------- STEP 1 : DESTROYING ALL 💀 --------"
puts ""

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

usertest1 = User.create!(
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
  gold_count: 20000,
  experience: 10
)

usertest3 = User.create!(
  email: "chloe@test.com",
  password: "123456",
  first_name: "Chloe",
  last_name: "test",
  gold_count: 50,
  experience: 500
)


# ////////////////////////
# user qu'on utilisera pour la démo donc faudra faire en fonction des besoin
user0 = User.create!(
  email: "valentin@gmail.com",
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
    image_name: "supercroissant.png"
  },
  {
    name: "Butler",
    description: "The player selected is your butler for one day!",
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
    name: "Day & night",
    description: "For one round of a duel, the opponent's screen turns off and on every 5 seconds!",
    probability: 0.2,
    image_name: "daynight.png"
  },
  {
    name: "Rainbow",
    description: "For one round of a duel, each letter of the opponent's answers has a different color!",
    probability: 0.6,
    image_name: "rainbow.png"
  },
  {
    name: "Reversed",
    description: "For one round of a duel, the opponent's answers are reversed!",
    probability: 0.6,
    image_name: "reversed.png"
  },
  {
    name: "Timer",
    description: "For one round of a duel, the opponent has only 8 seconds to respond!",
    probability: 0.6,
    image_name: "timer.png"
  }
]

# Itérer sur le tableau et créer chaque Item
items.each_with_index do |item_attributes, index|
  puts "[#{index+1}/#{items.size}] Creating item : #{item_attributes[:name]} 🌱"
  item = Item.create!(name: item_attributes[:name], description: item_attributes[:description], probability: item_attributes[:probability])
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
usertest1.items << Item.all.sample(10)
usertest2.items << Item.all.sample(2)
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
    content: "Comment démarrez-vous une session IRB dans le terminal ?",
    explication: "irb est la commande utilisée pour lancer l'environnement interactif de Ruby dans le terminal.",
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
    content: "Quelle commande utilisez-vous pour exécuter un script Ruby appelé app.rb ?",
    explication: "ruby app.rb est la commande standard pour exécuter un script Ruby.",
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
    content: "Comment définissez-vous une variable en Ruby ?",
    explication: "En Ruby, les variables sont définies simplement en assignant une valeur avec = sans déclaration préalable du type.",
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
    content: "Quelle syntaxe est utilisée pour définir une méthode en Ruby ?",
    explication: "En Ruby, les méthodes sont définies avec def suivi du nom de la méthode et de end pour clôturer la définition.",
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
    content: "Quelle classe Ruby est utilisée pour manipuler des chaînes de caractères ?",
    explication: "La classe String en Ruby est utilisée pour manipuler des chaînes de caractères.",
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
    content: "Quelle est la sortie de l'expression puts \"Hello, \#\{name\}\" si name = \"Alice\" ?",
    explication: "L'interpolation de chaîne avec \#\{...\} permet d'insérer la valeur d'une variable dans une chaîne de caractères.",
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
    content: "Quelle méthode de la classe String renvoie la longueur de la chaîne ?",
    explication: "length est une méthode de la classe String qui retourne le nombre de caractères dans la chaîne.",
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
    content: "Comment stockez-vous une valeur numérique dans une variable ?",
    explication: "En Ruby, les variables sont déclarées en assignant directement une valeur sans spécifier de type.",
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
    content: "Quel mot-clé utilisez-vous pour créer un bloc de code réutilisable en Ruby ?",
    explication: "def est le mot-clé utilisé en Ruby pour définir une méthode, qui est un bloc de code réutilisable.",
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
    content: "Comment imprimez-vous la chaîne \"Bonjour, monde !\" dans Ruby ?",
    explication: "puts est utilisé pour afficher une chaîne de caractères avec une nouvelle ligne à la fin.",
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
    content: "Que se passe-t-il si vous essayez d'accéder à une variable non définie en Ruby ?",
    explication: "En Ruby, accéder à une variable non définie provoque une erreur NameError.",
    subcategory: "Programming Basics",
    possibilities: [
      {
        content: "0 est retourné",
        correct: false
      },
      {
        content: "nil est retourné",
        correct: false
      },
      {
        content: "Une erreur est levée",
        correct: true
      },
      {
        content: "La variable est automatiquement définie sur nil",
        correct: false
      }
    ]
  },
  {
    content: "Comment appelez-vous une méthode greet définie comme def greet(name) en Ruby ?",
    explication: "Les méthodes en Ruby sont appelées en utilisant leur nom suivi de parenthèses contenant les arguments, si nécessaire.",
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
    content: "Quelle méthode de String convertit tous les caractères en majuscules ?",
    explication: "La méthode upcase convertit tous les caractères d'une chaîne en majuscules.",
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
    content: "Quel est le résultat de 5 + \"10\" en Ruby ?",
    explication: "Ruby ne permet pas d'additionner un nombre avec une chaîne de caractères, ce qui lève une TypeError.",
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
        content: "Une erreur",
        correct: true
      },
      {
        content: "5",
        correct: false
      }
    ]
  },
  {
    content: "Comment arrêtez-vous une session IRB ?",
    explication: "Vous pouvez quitter IRB en tapant exit, quit ou en utilisant Ctrl + D.",
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
    content: "Quelle structure utilisez-vous pour exécuter du code uniquement si une condition est vraie ?",
    explication: "La structure if est utilisée pour exécuter du code seulement si une condition donnée est vraie.",
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
    content: "Quel mot-clé Ruby permet de tester une condition après l'exécution d'un bloc de code, c'est-à-dire exécuter le bloc tant que la condition est fausse ?",
    explication: "until exécute un bloc de code tant que la condition spécifiée est fausse.",
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
    content: "Quelle est la valeur de arr = [1, 2, 3]; arr[2] ?",
    explication: "Les indices des tableaux en Ruby commencent à 0, donc arr[2] renvoie le troisième élément du tableau, soit 3.",
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
    content: "Quel mot-clé est utilisé pour sortir prématurément d'une boucle ?",
    explication: "break est utilisé pour sortir immédiatement d'une boucle, quelles que soient les conditions restantes.",
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
    content: "Quelle méthode permet d'ajouter un élément à la fin d'un tableau ?",
    explication: "La méthode push ajoute un nouvel élément à la fin d'un tableau.",
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
    content: "Comment appelez-vous un bloc de code qui se répète tant qu'une condition reste vraie ?",
    explication: "La boucle while continue de s'exécuter tant que la condition spécifiée reste vraie.",
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
    content: "Quelle est la sortie de l'expression suivante : arr = [1, 2, 3]; arr.pop ?",
    explication: "La méthode pop supprime et retourne le dernier élément du tableau, ici 3.",
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
    content: "Quelle structure est utilisée pour itérer sur chaque élément d'un tableau ?",
    explication: "each est couramment utilisée pour parcourir chaque élément d'un tableau.",
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
    content: "Quel mot-clé utilisez-vous pour gérer plusieurs conditions en Ruby ?",
    explication: "Le mot-clé case en Ruby est utilisé pour évaluer une variable contre plusieurs valeurs.",
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
    content: "Quelle boucle est la mieux adaptée pour exécuter un bloc de code un nombre spécifique de fois ?",
    explication: "La boucle for est idéale pour exécuter un bloc de code un nombre spécifique de fois, généralement sur une plage ou une collection.",
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
    content: "Comment accédez-vous au premier élément d'un tableau appelé arr ?",
    explication: "Le premier élément d'un tableau est accessible via l'indice 0, donc arr[0].",
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
    content: "Quelle structure de contrôle exécute un bloc de code si une condition est fausse ?",
    explication: "unless exécute un bloc de code uniquement si la condition spécifiée est fausse.",
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
    content: "Quelle est la différence entre while et until ?",
    explication: "while exécute un bloc tant qu'une condition est vraie, tandis que until exécute un bloc tant qu'une condition est fausse.",
    subcategory: "Flow, Conditionals & Arrays",
    possibilities: [
      {
        content: "while vérifie si une condition est vraie, until vérifie si elle est fausse.",
        correct: true
      },
      {
        content: "while est utilisé pour des boucles infinies, until ne l'est pas.",
        correct: false
      },
      {
        content: "until vérifie si une condition est vraie, while vérifie si elle est fausse.",
        correct: false
      },
      {
        content: "Il n'y a aucune différence.",
        correct: false
      }
    ]
  },
  {
    content: "Comment remplacez-vous un élément dans un tableau en Ruby ?",
    explication: "Vous pouvez remplacer un élément dans un tableau en assignant une nouvelle valeur à un indice spécifique, comme array[index] = value.",
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
    content: "Quelle méthode retourne et retire le premier élément d'un tableau ?",
    explication: "La méthode shift retire et retourne le premier élément d'un tableau.",
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
    content: "Comment ajouter un élément au début d'un tableau ?",
    explication: "unshift ajoute un élément au début d'un tableau.",
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
    content: "Quelle méthode est utilisée pour itérer sur chaque élément d'un tableau en Ruby ?",
    explication: "each est l'itérateur le plus courant en Ruby pour parcourir chaque élément d'un tableau ou d'une collection.",
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
    content: "Que fait la méthode map lorsqu'elle est utilisée sur un tableau ?",
    explication: "map applique le bloc de code à chaque élément et retourne un nouveau tableau avec les résultats.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "Elle retourne un tableau avec les mêmes éléments.",
        correct: false
      },
      {
        content: "Elle modifie chaque élément du tableau en place.",
        correct: false
      },
      {
        content: "Elle retourne un nouveau tableau avec les résultats du bloc de code appliqué à chaque élément.",
        correct: true
      },
      {
        content: "Elle ne fait rien.",
        correct: false
      }
    ]
  },
  {
    content: "Comment passez-vous un bloc de code à une méthode en Ruby ?",
    explication: "Les blocs de code en Ruby sont passés à une méthode avec {} pour des blocs courts ou do...end pour des blocs plus longs.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "Utilisez yield.",
        correct: false
      },
      {
        content: "Passez-le entre parenthèses.",
        correct: false
      },
      {
        content: "Utilisez les accolades {} ou do...end.",
        correct: true
      },
      {
        content: "Utilisez le mot-clé block.",
        correct: false
      }
    ]
  },
  {
    content: "Que fait le mot-clé yield dans une méthode ?",
    explication: "yield exécute le bloc de code passé à la méthode, permettant d'insérer du code externe dans le corps de la méthode.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "Il arrête l'exécution de la méthode.",
        correct: false
      },
      {
        content: "Il exécute le bloc de code passé à la méthode.",
        correct: true
      },
      {
        content: "Il lève une exception.",
        correct: false
      },
      {
        content: "Il retourne une valeur par défaut.",
        correct: false
      }
    ]
  },
  {
    content: "Que renvoie la méthode select lorsqu'elle est utilisée sur un tableau ?",
    explication: "select retourne un nouveau tableau contenant uniquement les éléments pour lesquels le bloc de code a retourné true.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "Les éléments pour lesquels le bloc retourne false.",
        correct: false
      },
      {
        content: "Les éléments pour lesquels le bloc retourne true.",
        correct: true
      },
      {
        content: "Un tableau inversé.",
        correct: false
      },
      {
        content: "Le tableau original sans modifications.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle est la différence entre map et each ?",
    explication: "map transforme chaque élément et retourne un nouveau tableau, tandis que each itère simplement sans retourner un nouveau tableau.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "each modifie les éléments du tableau en place, map les laisse intacts.",
        correct: false
      },
      {
        content: "map retourne un nouveau tableau, each ne retourne rien.",
        correct: true
      },
      {
        content: "map ne fonctionne qu'avec des chaînes de caractères.",
        correct: false
      },
      {
        content: "Il n'y a aucune différence.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle méthode retourne un tableau avec les éléments qui ne satisfont pas la condition du bloc de code ?",
    explication: "reject fait l'inverse de select, il retourne les éléments pour lesquels la condition est fausse.",
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
    content: "Comment spécifiez-vous les paramètres d'un bloc en Ruby ?",
    explication: "Les paramètres d'un bloc sont placés entre | | et représentent les éléments passés au bloc par l'itérateur.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "En utilisant yield.",
        correct: false
      },
      {
        content: "En les passant directement après do.",
        correct: false
      },
      {
        content: "En les plaçant entre | | dans le bloc.",
        correct: true
      },
      {
        content: "En les déclarant dans la méthode.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle est la sortie du code suivant ? [1, 2, 3].map { |n| n * 2 }",
    explication: "Le code applique n * 2 à chaque élément du tableau et retourne [2, 4, 6].",
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
    content: "Quelle méthode permet de s'assurer qu'un bloc est présent avant d'utiliser yield ?",
    explication: "block_given? vérifie si un bloc a été passé à la méthode avant d'utiliser yield.",
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
    content: "Quel est le résultat du code suivant ? 3.times { |i| puts i }",
    explication: "times itère 3 fois en passant à chaque fois l'index actuel au bloc, ici 0, 1 et 2.",
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
    content: "Que retourne la méthode find ?",
    explication: "find retourne le premier élément correspondant ou nil s'il n'y a aucun élément qui satisfait la condition.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "Un tableau avec tous les éléments correspondants.",
        correct: false
      },
      {
        content: "Le premier élément qui satisfait la condition.",
        correct: true
      },
      {
        content: "nil si aucun élément ne correspond.",
        correct: true
      },
      {
        content: "Les deux réponses B et C.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle est la sortie de ce code ? result = [10, 20, 30].select { |n| n > 15 } puts result",
    explication: "select filtre les éléments du tableau, ne gardant que ceux qui sont supérieurs à 15, donc [20, 30].",
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
    content: "Comment écrivez-vous un bloc qui prend deux paramètres ?",
    explication: "Un bloc en Ruby prenant deux paramètres est écrit comme { |param1, param2| ... } ou do |param1, param2| ... end.",
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
    content: "Que se passe-t-il si vous essayez d'utiliser yield sans passer de bloc ?",
    explication: "Appeler yield sans qu'un bloc ait été passé lève une exception LocalJumpError.",
    subcategory: "Iterators & Blocks",
    possibilities: [
      {
        content: "La méthode continue sans exécuter yield.",
        correct: false
      },
      {
        content: "Une erreur est levée.",
        correct: true
      },
      {
        content: "yield retourne nil.",
        correct: false
      },
      {
        content: "Le programme s'arrête.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle méthode est la plus adaptée pour transformer tous les éléments d'un tableau en appliquant une opération sur chacun d'eux ?",
    explication: "map est conçue pour transformer chaque élément d'un tableau en appliquant une opération et en retournant un nouveau tableau.",
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
    content: "Quelle méthode est utilisée pour itérer sur chaque élément d'un tableau en Ruby ?",
    explication: "each est l'itérateur le plus courant en Ruby pour parcourir chaque élément d'un tableau ou d'une collection.",
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
    content: "Que fait la méthode map lorsqu'elle est utilisée sur un tableau ?",
    explication: "map applique le bloc de code à chaque élément et retourne un nouveau tableau avec les résultats.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "Elle retourne un tableau avec les mêmes éléments.",
        correct: false
      },
      {
        content: "Elle modifie chaque élément du tableau en place.",
        correct: false
      },
      {
        content: "Elle retourne un nouveau tableau avec les résultats du bloc de code appliqué à chaque élément.",
        correct: true
      },
      {
        content: "Elle ne fait rien.",
        correct: false
      }
    ]
  },
  {
    content: "Comment passez-vous un bloc de code à une méthode en Ruby ?",
    explication: "Les blocs de code en Ruby sont passés à une méthode avec {} pour des blocs courts ou do...end pour des blocs plus longs.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "Utilisez yield.",
        correct: false
      },
      {
        content: "Passez-le entre parenthèses.",
        correct: false
      },
      {
        content: "Utilisez les accolades {} ou do...end.",
        correct: true
      },
      {
        content: "Utilisez le mot-clé block.",
        correct: false
      }
    ]
  },
  {
    content: "Que fait le mot-clé yield dans une méthode ?",
    explication: "yield exécute le bloc de code passé à la méthode, permettant d'insérer du code externe dans le corps de la méthode.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "Il arrête l'exécution de la méthode.",
        correct: false
      },
      {
        content: "Il exécute le bloc de code passé à la méthode.",
        correct: true
      },
      {
        content: "Il lève une exception.",
        correct: false
      },
      {
        content: "Il retourne une valeur par défaut.",
        correct: false
      }
    ]
  },
  {
    content: "Que renvoie la méthode select lorsqu'elle est utilisée sur un tableau ?",
    explication: "select retourne un nouveau tableau contenant uniquement les éléments pour lesquels le bloc de code a retourné true.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "Les éléments pour lesquels le bloc retourne false.",
        correct: false
      },
      {
        content: "Les éléments pour lesquels le bloc retourne true.",
        correct: true
      },
      {
        content: "Un tableau inversé.",
        correct: false
      },
      {
        content: "Le tableau original sans modifications.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle est la différence entre map et each ?",
    explication: "map transforme chaque élément et retourne un nouveau tableau, tandis que each itère simplement sans retourner un nouveau tableau.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "each modifie les éléments du tableau en place, map les laisse intacts.",
        correct: false
      },
      {
        content: "map retourne un nouveau tableau, each ne retourne rien.",
        correct: true
      },
      {
        content: "map ne fonctionne qu'avec des chaînes de caractères.",
        correct: false
      },
      {
        content: "Il n'y a aucune différence.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle méthode retourne un tableau avec les éléments qui ne satisfont pas la condition du bloc de code ?",
    explication: "reject fait l'inverse de select, il retourne les éléments pour lesquels la condition est fausse.",
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
    content: "Comment spécifiez-vous les paramètres d'un bloc en Ruby ?",
    explication: "Les paramètres d'un bloc sont placés entre | | et représentent les éléments passés au bloc par l'itérateur.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "En utilisant yield.",
        correct: false
      },
      {
        content: "En les passant directement après do.",
        correct: false
      },
      {
        content: "En les plaçant entre | | dans le bloc.",
        correct: true
      },
      {
        content: "En les déclarant dans la méthode.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle est la sortie du code suivant ? [1, 2, 3].map { |n| n * 2 }",
    explication: "Le code applique n * 2 à chaque élément du tableau et retourne [2, 4, 6].",
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
    content: "Quelle méthode permet de s'assurer qu'un bloc est présent avant d'utiliser yield ?",
    explication: "block_given? vérifie si un bloc a été passé à la méthode avant d'utiliser yield.",
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
    content: "Quel est le résultat du code suivant ? 3.times { |i| puts i }",
    explication: "times itère 3 fois en passant à chaque fois l'index actuel au bloc, ici 0, 1 et 2.",
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
    content: "Que retourne la méthode find ?",
    explication: "find retourne le premier élément correspondant ou nil s'il n'y a aucun élément qui satisfait la condition.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "Un tableau avec tous les éléments correspondants.",
        correct: false
      },
      {
        content: "Le premier élément qui satisfait la condition.",
        correct: true
      },
      {
        content: "nil si aucun élément ne correspond.",
        correct: true
      },
      {
        content: "Les deux réponses B et C.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle est la sortie de ce code ? result = [10, 20, 30].select { |n| n > 15 } puts result",
    explication: "select filtre les éléments du tableau, ne gardant que ceux qui sont supérieurs à 15, donc [20, 30].",
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
    content: "Comment écrivez-vous un bloc qui prend deux paramètres ?",
    explication: "Un bloc en Ruby prenant deux paramètres est écrit comme { |param1, param2| ... } ou do |param1, param2| ... end.",
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
    content: "Que se passe-t-il si vous essayez d'utiliser yield sans passer de bloc ?",
    explication: "Appeler yield sans qu'un bloc ait été passé lève une exception LocalJumpError.",
    subcategory: "Hash & Symbols",
    possibilities: [
      {
        content: "La méthode continue sans exécuter yield.",
        correct: false
      },
      {
        content: "Une erreur est levée.",
        correct: true
      },
      {
        content: "yield retourne nil.",
        correct: false
      },
      {
        content: "Le programme s'arrête.",
        correct: false
      }
    ]
  },
  {
    content: "Quelle méthode est la plus adaptée pour transformer tous les éléments d'un tableau en appliquant une opération sur chacun d'eux ?",
    explication: "map est conçue pour transformer chaque élément d'un tableau en appliquant une opération et en retournant un nouveau tableau.",
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
puts "---- STEP 4 : CREATING LESSONS 🌱 ----"
puts ""

lessons = [
  {
    content: 'Rappel du cours :
    Dans cette sous-catégorie, vous apprendrez à utiliser IRB (Interactive Ruby), un shell pour interagir directement avec Ruby. Vous apprendrez également à lancer un script Ruby à partir du terminal. Voici les concepts essentiels à retenir :',
    subcategory: sub_ruby
  },
  {
    content: 'Variables:
        Une variable est un moyen de stocker une valeur pour une utilisation ultérieure.
        En Ruby, les variables sont dynamiquement typées (vous n\'avez pas besoin de déclarer le type).
        Exemple : name = "Alice" assigne la valeur "Alice" à la variable name.',
    subcategory: sub_ruby
  },
  {
    content: 'Méthodes:
        Les méthodes sont des blocs de code que vous pouvez appeler à tout moment pour effectuer une tâche spécifique.
        Définition : def method_name(arguments) ... end
        Exemple :
        ruby
          def greet(name)
            "Hello, #{name}!"
          end',
    subcategory: sub_ruby
  },
  {
    content: 'Classes intégrées :
    Ruby fournit plusieurs classes intégrées comme String, Array, Hash, etc.
    Ces classes offrent de nombreuses méthodes utiles pour manipuler des données.
',
    subcategory: sub_ruby
  },
  {
    content: 'Exécution d\'un script Ruby :
    Pour exécuter un script Ruby, créez un fichier avec l\'extension .rb, par exemple script.rb.
    Lancer le script dans le terminal avec la commande : ruby script.rb.',
    subcategory: sub_ruby
  },
  {
    content: 'Sous-catégorie 2 de Ruby : Flow, Conditionals & Arrays
Rappel du cours :
Dans cette sous-catégorie, nous allons aborder les structures de contrôle du flux, telles que les instructions conditionnelles et les boucles, qui modifient le déroulement de vos programmes. Vous découvrirez également les tableaux (arrays) et comment les manipuler.',
    subcategory: sub_ruby2
  },
  {
    content: 'Les instructions conditionnelles :
      Elles permettent d\'exécuter du code en fonction de certaines conditions.
      if, elsif, else: permettent de choisir entre plusieurs blocs de code en fonction d\'une condition.
      unless: exécute un bloc de code seulement si une condition est fausse.
      case / when: une alternative à if pour tester plusieurs conditions.
        Exemple :
        if x > 10
          puts "x est supérieur à 10"
        elsif x == 10
          puts "x est égal à 10"
        else
          puts "x est inférieur à 10"
        end',
    subcategory: sub_ruby2
  },
  {
    content: 'Les boucles :
      Permettent de répéter un bloc de code plusieurs fois.
      while: exécute un bloc de code tant qu\'une condition est vraie.
      until: exécute un bloc de code tant qu\'une condition est fausse.
      for: parcourt une plage ou un tableau d\'éléments.
      loop: exécute un bloc de code indéfiniment jusqu\'à ce qu\'une condition d\'arrêt soit rencontrée (utilisation de break pour arrêter).
      Exemple :
        i = 0
        while i < 5
          puts i
          i += 1
        end',
    subcategory: sub_ruby2
  },
  {
    content: 'Les tableaux (arrays) :

    Un tableau est une collection ordonnée de valeurs indexées.
    Les éléments sont accessibles par leur indice, commençant à 0.
    Les tableaux peuvent contenir des éléments de différents types.
    Exemple :
      array = [1, "two", 3.0]
      puts array[1]  # "two"',
    subcategory: sub_ruby2
  },
  {
    content: 'Méthodes communes :
    push: ajoute un élément à la fin du tableau.
    pop: retire le dernier élément du tableau.
    shift: retire le premier élément du tableau.
    unshift: ajoute un élément au début du tableau.
    each: itère sur chaque élément du tableau.',
    subcategory: sub_ruby2
  },
  {
    content: 'Rappel du cours :
    Dans cette sous-catégorie, vous allez découvrir les itérateurs et les blocs en Ruby. Les itérateurs sont des méthodes qui parcourent les éléments d\'une collection, comme un tableau, et exécutent un bloc de code pour chaque élément. Les blocs sont des morceaux de code encapsulés entre accolades {} ou entre do...end, qui peuvent être passés à une méthode.',
    subcategory: sub_ruby3
  },
  {
    content: 'Les itérateurs :
    # each: Parcourt chaque élément d\'une collection (tableau, hash, etc.) et exécute un bloc de code pour chaque élément.
    map: Transforme chaque élément d\'une collection en appliquant un bloc de code et retourne un nouveau tableau avec les résultats.
    select: Filtre les éléments d\'une collection selon une condition définie dans un bloc de code et retourne un nouveau tableau avec les éléments qui satisfont cette condition.
    reject: Fait l\'inverse de select, retournant les éléments qui ne satisfont pas la condition.
      Exemple :
        numbers = [1, 2, 3, 4, 5]
        squares = numbers.map { |n| n * n }',
    subcategory: sub_ruby3
  },
  {
    content: 'Les blocs :
    Un bloc est un morceau de code passé à une méthode.
    Les blocs peuvent être définis avec {} pour des blocs courts ou do...end pour des blocs plus longs.
    Les blocs peuvent prendre des paramètres, entre | |, qui représentent les éléments sur lesquels le bloc itère.
      Exemple :
        5.times do |i|
          puts "This is iteration number #{i}"
        end',
    subcategory: sub_ruby3
  },
  {
    content: 'Le mot-clé yield:
    yield permet à une méthode d\'exécuter le bloc de code qui lui est passé.
    Vous pouvez utiliser yield pour insérer le bloc de code passé à la méthode à un endroit spécifique dans la méthode.
      Exemple :
        def greet
          puts "Hello"
          yield if block_given?
          puts "Goodbye"
        end
        greet { puts "Nice to meet you!" }',
    subcategory: sub_ruby3
  },
  {
    content: 'Les Hashes :
    Un hash est une structure de données qui stocke des paires clé-valeur. Contrairement aux tableaux, les éléments d’un hash ne sont pas ordonnés par un index numérique mais par des clés.
    Clé : Un objet (souvent un symbol ou une chaîne de caractères) utilisé pour accéder à la valeur associée.
    Valeur : L\'objet associé à une clé dans un hash.
      Syntaxe :
      hash = { key1: "value1", key2: "value2" }

      Accès aux valeurs :
      hash[:key1]  # => "value1"

    Méthodes courantes :
      keys : retourne toutes les clés du hash.
      values : retourne toutes les valeurs du hash.
      each : itère sur chaque paire clé-valeur.',
    subcategory: sub_ruby4
  },
  {
    content: 'Les Symbols :
    Un symbol est un objet immuable souvent utilisé comme identifiant ou clé dans un hash.
    Les symbols sont créés avec : suivi du nom du symbol, par exemple :my_symbol.
    Les symbols sont plus légers que les chaînes de caractères car ils ne changent pas et sont réutilisés.
    Comparaison avec les strings : alors qu\'une chaîne de caractères est un objet différent chaque fois qu\'elle est créée, un symbol est le même objet chaque fois qu\'il est référencé.',
    subcategory: sub_ruby4
  },
  {
    content: 'Utilisation des Symbols comme clés de Hash :
    Il est courant d\'utiliser des symbols comme clés dans un hash pour leur performance et leur immuabilité.
      Exemple :
        person = { name: "Alice", age: 30 }
',
    subcategory: sub_ruby4
  },
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
