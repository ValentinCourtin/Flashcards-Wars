class Duel < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, foreign_key: 'opponent_id', class_name: 'User'
  belongs_to :inventory, optional: true
  has_one :item, through: :inventory
  has_many :rounds
  has_many :round_question_answers, through: :rounds

  after_create :create_round
  after_create :create_round_question_answers

  def current_round
    rounds.where(finished: false).first
  end

  def progess
    "#{rounds.where(finished: true).count + 1}  / 3"
  end

  def user_turn
    if current_round.user_finished
      "Waiting for the opponent"
    else
      "Your turn"
    end
  end

  def opponent_turn
    if current_round.opponent_finished
      "Waiting for the opponent"
    else
      "Your turn"
    end
  end

  def user_win
    user_win = 0
    rounds.each do |round|
      user_win += 1 if round.user_score > round.opponent_score
    end
    return user_win
  end

  def opponent_win
    opponent_win = 0
    rounds.each do |round|
      opponent_win += 1 if round.user_score < round.opponent_score
    end
    return opponent_win
  end

  def user_winner
    if user_win < opponent_win
      "YOU LOST"
    elsif user_win > opponent_win
      "YOU WON"
    else
      "DRAW"
    end
  end

  def opponent_winner
    if opponent_win < user_win
      "YOU LOST"
    elsif opponent_win > user_win
      "YOU WON"
    else
      "DRAW"
    end
  end

  def finished?
    rounds.all?(&:finished)
    # equivalent de la ligne au dessus
    # rounds.all? do |round|
    #   round.finished
    # end
  end

  private

  def create_round
    2.times do
      subcategory = User.find(user_id).trainings.sample.subcategory
      Round.create(
        duel: self,
        subcategory: subcategory
      )
    end

    subcategory_opponent = User.find(opponent_id).trainings.sample.subcategory
    Round.create(
      duel: self,
      subcategory: subcategory_opponent
    )
  end

  def create_round_question_answers
    Round.where(duel: self).each do |round|
      3.times do
        question = round.subcategory.questions.sample
        RoundQuestionAnswer.create(
          user: User.find(user_id),
          question: question,
          round: round,
          solved: false,
          timer: 0
        )
        RoundQuestionAnswer.create(
          user: User.find(opponent_id),
          question: question,
          round: round,
          solved: false,
          timer: 0
        )
      end
    end
  end


end
