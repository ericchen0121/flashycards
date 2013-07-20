Deck.create(name: "States and Capitals")

state_deck = Deck.where(name: "States and Capitals").first.cards

state_deck << Card.create(term: "California", definition: "Sacramento")
state_deck << Card.create(term: "Hawaii", definition: "Honolulu")
state_deck << Card.create(term: "Virginia", definition: "Richmond")
