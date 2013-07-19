Deck.create(name: "States and Capitals")

Deck.where(name: "States and Capitals").first.cards << Card.create(term: "California", definition: "Sacramento")
Deck.where(name: "States and Capitals").first.cards << Card.create(term: "Hawaii", definition: "Honolulu")
Deck.where(name: "States and Capitals").first.cards << Card.create(term: "Virginia", definition: "Richmond")
