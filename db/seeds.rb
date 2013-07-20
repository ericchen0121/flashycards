Deck.create(name: "States and Capitals")

state_deck = Deck.where(name: "States and Capitals").first.cards

state_deck << (term: "California", definition: "Sacramento")
state_deck << (term: "Hawaii", definition: "Honolulu")
state_deck << (term: "Virginia", definition: "Richmond")
