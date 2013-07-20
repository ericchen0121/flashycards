class User < ActiveRecord::Base
  has_many :rounds
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true
end
