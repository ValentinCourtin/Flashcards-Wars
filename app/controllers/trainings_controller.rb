class TrainingsController < ApplicationController

  def index
    @trainings = current_user.trainings
    @subcategories = Subcategory.all
    @Locked_missions_count = @subcategories.count - @trainings.count
  end

  def show
    @training = Training.find(params[:id])
  end

  def play
    @training = Training.find(params[:training_id])
    @questions = @training.questions
    @question = @questions.first
    @possibilities = @question.possibilities
  end

  def finished
    @training = Training.find(params[:training_id])
    @gold_exp_winned = 0
    @first_attempt = 0
    @total_questions = 0
    @all = @training.training_answers
    @all.each do |ta|
      if ta.count_try == 1
        @gold_exp_winned = @gold_exp_winned < 100 ? @gold_exp_winned + 5 : 100
        @first_attempt += 1
      end
      @total_questions += 1
    end
    @training.user.gold_count += (100 + @gold_exp_winned)
    @training.user.experience += (100 + @gold_exp_winned)
  end

end
