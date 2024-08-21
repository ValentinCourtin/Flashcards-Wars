class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trainings

  has_many :duels
  has_many :training_answers, through: :trainings
  has_many :inventories
  has_many :items, through: :inventories, dependent: :destroy


  after_create :create_first_training

  def level
    case experience
    when 0..99
      1
    when 100..199
      2
    when 200..399
      3
    when 400..699
      4
    when 700..1099
      5
    else
      # Calculer pour les niveaux supérieurs
      5 + ((experience - 1099) / 500)
    end
  end


  private
  # create first training
  def create_first_training
    # @subcategory = Subcategory.find params[:subcategory_id]
    @subcategory = Subcategory.first
    @training = Training.create(
      user: self,
      subcategory: @subcategory
    )
    @subcategory.questions.each do |question|
      TrainingAnswer.create(
        training: @training,
        question: question,
        count_try: 0,
        solved: false
      )
    end

    # Direction la premiere question redirect_to
  end

end
