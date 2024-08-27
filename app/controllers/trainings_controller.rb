class TrainingsController < ApplicationController
  before_action :set_training, only: [:finished, :play, :replay, :resolve]

  def index
    @trainings = current_user.trainings.where(pleasur: false)
    @subcategories = Subcategory.all
    @Locked_missions_count = @subcategories.count - @trainings.count
  end

  def show
    @training = Training.find(params[:id])
  end

  def play
    # On prend tout les training answer qui sont pas résolu (faux ou jamais répondu)
    @training_answers = TrainingAnswer.where(
      training: @training,
      solved: false
    )

    if @training.finished
      # user tries to submit several times
      redirect_to trainings_path
    elsif @training_answers.empty?
      # Il n'y a plus de question on redirige à la fin
      redirect_to training_finished_path
    else
      #Il reste des questions
      # On prends une training answer au hasard
      @training_answer = @training_answers.sample
      # on recup la question
      @question = @training_answer.question
      # on recup les possibilité
      @possibilities = @question.possibilities
      # On calcul le nouveau compte de try
      @try = @training_answer.count_try += 1
      # On ajoute un au nobmre de try
      @training_answer.update(count_try: @try)
      # On affiche la vue qui pose la question (views/trainings/play)
      # Elle existe déjà grâçe à la méthode play
      render :play
    end
  end

  def replay
    @training_answer_pleasur = Training.new
    @training_answer_pleasur.user = current_user
    @training_answer_pleasur.subcategory = @training.subcategory
    @training_answer_pleasur.pleasur = true
    @training_answer_pleasur.save
    redirect_to training_play_path(@training_answer_pleasur)
  end

  def resolve
    if @training.finished
      redirect_to trainings_path
    end
    # On récup le training answer au quel l'utilisateur a répondu
    @training_answer = TrainingAnswer.find(params[:training_answer_id])
    # On récup la réponse qu'il a donné
    @answer = Possibility.find(params[:possibility_id])
    # On récupe la solution de la question posé
    @question = @training_answer.question
    # On cree une variable savoir si il a la bonne réponse
    @correct = @answer == @question.solution
    @try = @training_answer.count_try
    # Si bonne réponse on passe solved a true
    @training_answer.update(solved: true) if @correct
  end

  def finished
    if @training.pleasur == false
      # Set up the gold/exp winned from the quiz
      @gold_exp_winned = 0
      # Initialize the counter for the number of times where the user gave the right answer at first
      @first_attempt = 0
      # Count
      @total_questions = 0
      @all = @training.training_answers
      @training.update(finished: true)
      @all.each do |ta|
        if ta.count_try == 1
          if @gold_exp_winned < 100
            @gold_exp_winned += 5
          else
            @gold_exp_winned = 100
          end
          @first_attempt += 1
        end
        @total_questions += 1
      end
      @actual_gold = @training.user.gold_count
      @new_gold = @actual_gold + 100 + @gold_exp_winned
      @training.user.update(gold_count: @new_gold)

      @actual_exp = @training.user.experience
      @new_exp = @actual_exp + 100 + @gold_exp_winned
      @training.user.update(experience: @new_exp)
      next_training
    end
    @training.update(finished: true)
  end

  private

  def set_training
    @training = Training.find(params[:training_id])
  end

  def next_training
    if Subcategory.exists? (@training.subcategory.id + 1)
      @next_subcategory = Subcategory.find(@training.subcategory.id + 1)
      @next_training = Training.create(
        user: current_user,
        subcategory: @next_subcategory
      )
    else
      flash[:notice] = "You have completed all subcategories."
      redirect_to home_path # Redirect to an appropriate page
    end
  end
end
