class Card < ActiveRecord::Base
  has_many :guesses
  belongs_to :deck
  validates :term, presence: true
  validates :definition, presence: true
end
