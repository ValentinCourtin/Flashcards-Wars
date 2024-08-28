class DuelsController < ApplicationController
  def index
    @duels = current_user.duels
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
    @users = User.all.collect { |user| [user.first_name, user.id] }
  end

  def create
    @opponent = User.find(params[:user_id])
    @duel = Duel.create(
      user: current_user,
      opponent: @opponent
    )
    redirect_to duel_path(@duel)
  end

  def duelplay
    @duel = Duel.find(params[:duel_id])
    @round = Round.where(duel: @duel).first
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
    @user = current_user
    @duel = Duel.find(params[:duel_id])
    @opponent = @duel.opponent
    @current_user_score = RoundQuestionAnswer.where(user: @user, success: true).count
  end
end
