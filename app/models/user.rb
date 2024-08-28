class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :trainings, dependent: :destroy

  has_many :duels
  has_many :training_answers, through: :trainings
  has_many :inventories
  has_many :items, through: :inventories, dependent: :destroy

  has_many :subcategories, through: :training

  after_create :create_first_training

  # def level
  #   case experience
  #   when 0..99
  #     "1 : BEGINNER"
  #   when 100..199
  #     "2 : LEARNER"
  #   when 200..399
  #     "3 : PROGRAMMER"
  #   when 400..699
  #     "4 : DEVELOPPER"
  #   when 700..1099
  #     "5 : HACKER"
  #   else
  #     # Calculer pour les niveaux supérieurs
  #     5 + ((experience - 1099) / 500)
  #   end
  # end

  #  calcul du level
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
      # 4 + ((experience - 1099) / 500)
      5
    end
  end

  #  affichage du level
  def level_text
    case level
    when 1
      "1 : BEGINNER"
    when 2
      "2 : LEARNER"
    when 3
      "3 : PROGRAMMER"
    when 4
      "4 : DEVELOPPER"
    else
      "#{level} : HACKER"
    end
  end


  #  affichage du robot par level
  def level_image
    case level
    when 1
      "robots/beginner.png"
    when 2
      "robots/learner.png"
    when 3
      "robots/programmer.png"
    when 4
      "robots/developper.png"
    else
      "robots/hacker.png"
    end
  end



  # barre d'experience
  def progress_percentage
    case experience
    when 0..99 # 1 : beginner
      (experience - 0) * 100 / (99 - 0)
    when 100..199 # 2 : learner
      (experience - 100) * 100 / (199 - 100)
    when 200..399 # 3 : programmer
      (experience - 200) * 100 / (399 - 200)
    when 400..699 # 4 : developper
      (experience - 400) * 100 / (699 - 400)
    when 700..1099 # 5 : hacker
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
