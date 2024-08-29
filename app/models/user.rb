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



  # def progress_percentage
  #   # Déterminer les bornes de l'expérience pour le niveau actuel
  #   case level
  #   when 1
  #     min_exp, max_exp = 0, 99
  #   when 2
  #     min_exp, max_exp = 100, 199
  #   when 3
  #     min_exp, max_exp = 200, 399
  #   when 4
  #     min_exp, max_exp = 400, 699
  #   when 5
  #     min_exp, max_exp = 700, 1099
  #   else
  #     # Pour les niveaux supérieurs, on peut utiliser un calcul générique
  #     min_exp, max_exp = 1100, Float::INFINITY
  #   end

  #   # Calculer la progression en pourcentage
  #   if experience < min_exp
  #     0
  #   elsif experience > max_exp
  #     100
  #   else
  #     ((experience - min_exp).to_f / (max_exp - min_exp) * 100).round
  #   end
  # end


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
