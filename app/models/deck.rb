class Deck < ApplicationRecord

  has_many :cards, :dependent => :destroy
  has_many :stars
  has_many :forks
  has_many :user_decks
  has_many :users, through: :user_decks

end
