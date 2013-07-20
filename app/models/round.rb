class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  has_many :guesses

  def correct_count
    correct_count = 0
    guesses.each do |guess|
      if guess.correct == 1
       correct_count += 1
      end
    end

    correct_count
  end

  def incorrect_count
    incorrect_count = 0
    guesses.each do |guess|
      if guess.correct == 0
        incorrect_count += 1
      end
    end

    incorrect_count
  end

  def total
    total = incorrect_count + correct_count
  end

  def percent_correct
    ((correct_count.to_f / total).round(2) * 100).to_i
  end

  def percent_incorrect
    100 - percent_correct
  end

end
