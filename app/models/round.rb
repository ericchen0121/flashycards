class Round < ActiveRecord::Base

  belongs_to :user
  belongs_to :deck
  has_many :guesses

  def correct_count
    correct_count = 0
    guesses.each {|guess| correct_count += 1 if guess.correct == 1}
    correct_count
  end

  def incorrect_count
    guesses.count - correct_count
  end

  def total
    guesses.count
  end

  def percent_correct
      # total = total.nonzero? || 1 # avoid division by zero
      (correct_count.to_f / (total.nonzero? || 1) * 100).to_i
  end

  def percent_incorrect
    100 - percent_correct
  end

  def get_deck_name
    (deck.name if deck)|| "Deck erased" # Handles the case where deck is erased but the Round and data still exist
  end

  def data
    {deck_name: get_deck_name , round: id, correct: correct_count, incorrect: incorrect_count, total: total, percent_correct: percent_correct, percent_incorrect: percent_incorrect}
  end

end
