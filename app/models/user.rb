class User < ApplicationRecord

  has_many :user_decks
  has_many :decks, through: :user_decks
  has_many :cards, through: :decks
  has_many :stars
  has_secure_password
  validates :username, uniqueness: true

end
