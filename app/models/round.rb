class Round < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  has_many :guess
end
