# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

natalie = User.create(username: "nataliepep", password: "12345" )
john = User.create(username: "johndoe", password: "12345" )

science = Deck.create(title: "Periodic Table", subject: "Science")
math = Deck.create(title: "Math", subject: "Mathematics")


UserDeck.create(user: natalie, deck: science)
UserDeck.create(user: natalie, deck: math)

Card.create(deck: science, question: "What is the atomic number of Hydrogen", answer: "1")
Card.create(deck: science, question: "What is the symbol of gold", answer: "AU")
Card.create(deck: science, question: "What is that atomic number of Barium", answer: "56")
Card.create(deck: science, question: "What is the natural state of Neon", answer: "gas")
Card.create(deck: science, question: "What is the natural state of Mercury", answer: "liquid")
Card.create(deck: science, question: "What is the symbol of Potassium", answer: "K")
Card.create(deck: science, question: "What is the atomic mass of Oxygen", answer: "16")
Card.create(deck: science, question: "What is the atomic mass of Bromine", answer: "80")
Card.create(deck: science, question: "What is the atomic number of Sodium", answer: "11")
Card.create(deck: science, question: "What is the symbol of Soduim", answer: "Na")

Card.create(deck: math, question: "What is 1 x 0 ", answer: "0")
Card.create(deck: math, question: "What is 1 + 1", answer: "2")
Card.create(deck: math, question: "What is 5 + 4", answer: "9")
Card.create(deck: math, question: "What is 9 / 3", answer: "3")
Card.create(deck: math, question: "What is 10 / 5", answer: "2")
Card.create(deck: math, question: "What is 2 + 2", answer: "4")
Card.create(deck: math, question: "What is 3 * 7", answer: "21")
Card.create(deck: math, question: "What is 8 + 3", answer: "11")
Card.create(deck: math, question: "What is 12 x 1", answer: "12")
Card.create(deck: math, question: "What is 1 / 0", answer: "Error")

Star.create(user: natalie, deck: math)
Star.create(user: john, deck: math)
