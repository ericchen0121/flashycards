class User < ActiveRecord::Base
  has_many :rounds
  has_many :decks
end
