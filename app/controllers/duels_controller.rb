class DuelsController < ApplicationController
  def index
    @duels = Duel.where(user: current_user) + Duel.where(opponent: current_user)
    if params[:status] == 'finished'
      @duels = @duels.select(&:finished?)
    elsif params[:status] == 'pending'
      @duels = @duels.select do |duel|
        next if duel.finished?

        if duel.user == current_user
          duel.current_round.user_finished
        else
          duel.current_round.opponent_finished
        end
      end
    elsif params[:status] == 'your_turn'
      @duels = @duels.select do |duel|
        next if duel.finished?

        if duel.user == current_user
          !duel.current_round.user_finished
        else
          !duel.current_round.opponent_finished
        end
      end
    end
  end

  def show
    @duel = Duel.find(params[:id])
    @round = Round.where(duel: @duel).first
  end

  # def choice
  #   @users = User.all
  #   @user = current_user
  # end

  def opponent_choice
    @user = current_user
    @users = User.all.collect { |user| [user.id, user.first_name, user.last_name]}
    @inventories = current_user.inventories.joins(:item).where(items: { category: "duel"})
  end

  def create
    params[:inventory_id].present? ? @inventory = Inventory.find(params[:inventory_id]) : @inventory = nil
    @opponent = User.find(params[:user_id])

    @duel = Duel.create(
      user: current_user,
      opponent: @opponent,
      inventory: @inventory
    )
    redirect_to duel_path(@duel)
  end

  def duelplay
    # Cherche le round qui n'a pas été fait par l'utilisateur
    # => roundplay(round_id)
      # Chercher la premiere question non répondu

      # Si il y a une question non répondu :
        # Afficher la question et lors de la réponse aller sur roundresolve(round_id, question_id)

      # Si plus de question :
        # Aller sur roundfinished(round_id)

    # => roundresolve(round_id, question_id)
      # Afficher la solution de la question
      # Marquer la question comme répondu
      # Retourner sur roundplay(round)

    # => roundFinished(round)
      # Marquer le round comme fini,
      # Aller dans le show du duel showduel(duel)

    @duel = Duel.find(params[:duel_id])
    @round = Round.where(duel: @duel, finished: false).first
    @round_question_answers = RoundQuestionAnswer.where(user: current_user, round: @round, solved: false)
    if @round_question_answers.empty?
      redirect_to duel_duelfinished_path(@duel)
    else
      @round_question_answer = @round_question_answers.sample
      @question = @round_question_answer.question
      @possibilities = @question.possibilities
    end
  end

  def duelresolve
    @round_question_answer = RoundQuestionAnswer.find(params[:round_question_answer_id])
    @question = @round_question_answer.question
    @answer = Possibility.find(params[:possibility_id])
    @correct = @answer == @question.solution
    @round_question_answer.update(solved: true)
    @round_question_answer.update(success: true) if @correct
  end

  def duelfinished
    @duel = Duel.find(params[:duel_id])
    @round = Round.where(duel: @duel, finished: false).first
    @user = @duel.user
    @opponent = @duel.opponent
    @user_solved = RoundQuestionAnswer.where(user: @user, round: @round, solved: true).count
    @opponent_solved = RoundQuestionAnswer.where(user: @opponent, round: @round, solved: true).count
    @round.update(user_finished: true) if @user_solved == 3
    @round.update(opponent_finished: true) if @opponent_solved == 3
    @round.update(finished: true) if @user_solved == 3 && @opponent_solved == 3
    @round.update(user_score: RoundQuestionAnswer.where(user: @user, round: @round, success: true).count) if current_user == @user
    @round.update(opponent_score: RoundQuestionAnswer.where(user: @opponent, round: @round, success: true).count) if current_user == @opponent
  end

  private

  def apply_malus
    case @training.malus_type
    when 'Tornade'
      apply_tornade_malus
    when 'Hide'
      apply_hide_malus
    when 'Rainbow'
      apply_rainbow_malus
    when 'Return'
      apply_return_malus
    when 'Timer'
      apply_timer_malus
    when 'Joker'
      apply_joker_malus
    end
  end

end
