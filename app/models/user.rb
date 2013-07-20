class User < ActiveRecord::Base
  has_many :rounds
  validates :name, presence: true
  validates :password, presence: true
end
