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
      "1 : BEGINNER"
    when 100..199
      "2 : LEARNER"
    when 200..399
      "3 : PROGRAMMER"
    when 400..699
      "4 : DEVELOPPPER"
    when 700..1099
      "5 : HACKER"
    else
      # Calculer pour les niveaux supérieurs
      5 + ((experience - 1099) / 500)
    end
  end


  # barre d experience
  def progress_percentage
    case experience
    when 0..99
      (experience - 0) * 100 / (99 - 0)
    when 100..199
      (experience - 100) * 100 / (199 - 100)
    when 200..399
      (experience - 200) * 100 / (399 - 200)
    when 400..699
      (experience - 400) * 100 / (699 - 400)
    when 700..1099
      (experience - 700) * 100 / (1099 - 700)
    else
      99
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
    # Direction la premiere question redirect_to
  end

end
