
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "destroying ALL 💀"
User.destroy_all
Possibility.destroy_all
Question.destroy_all
Subcategory.destroy_all
Category.destroy_all


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


puts "Creating categories 🔄"
cat_ruby = Category.create(name:"Ruby")
cat_rails = Category.create(name: "Rails")


puts "Creating subcategories 🔄"
sub_ruby = Subcategory.create(name: "Basics ruby", content:"blablab blablabl", category: cat_ruby)
sub_ruby2 = Subcategory.create(name: "Méthodes ruby", content:"tototototot", category: cat_ruby)
sub_rails = Subcategory.create(name: "Basics rails", content:"hohohoho", category: cat_rails)
sub_rails2 = Subcategory.create(name: "Methodes rails", content:"huhuhuhuh", category: cat_rails )

puts "Creating questions 🔄"
quest_1 = Question.create(content:"question1", explication:"explication de la question 1", subcategory: sub_ruby )
quest_2 = Question.create(content:"question2", explication:"explication de la question 2", subcategory: sub_ruby )
quest_3 = Question.create(content:"question3?", explication:"explication de la question 3", subcategory: sub_ruby2 )
quest_4 = Question.create(content:"question4?", explication:"explication de la question 4", subcategory: sub_ruby2 )
quest_5 = Question.create(content:"question5?", explication:"explication de la question 5", subcategory: sub_rails)
quest_6 = Question.create(content:"question6?", explication:"explication de la question 6", subcategory: sub_rails)
quest_7 = Question.create(content:"question7?", explication:"explication de la question 7", subcategory: sub_rails2)
quest_8 = Question.create(content:"question8?", explication:"explication de la question 8", subcategory: sub_rails2)

puts "Creating answers 🔄"
3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_1 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_1 )

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_2 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_2 )

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_3 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_3 )

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_4 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_4 )

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_5 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_5 )

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_6 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_6)

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_7 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_7 )

3.times do
  Possibility.create(content:"réponse fausse", correct:false, question: quest_8 )
end
Possibility.create(content:"réponse vraie", correct: true, question: quest_8 )

puts "FINISHED 👏"

