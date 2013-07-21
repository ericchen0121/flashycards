state_deck = Deck.create(name: "States and Capitals").cards
state_deck << Card.create(term: "Sacramento", definition: "California")
state_deck << Card.create(term: "Honolulu", definition: "Hawaii")
state_deck << Card.create(term: "Richmond", definition: "Virginia")
state_deck << Card.create(term: "Salem", definition: "Oregon")
state_deck << Card.create(term: "Providence", definition: "Rhode Island")
state_deck << Card.create(term: "Olympia", definition: "Washington")

cat_deck = Deck.create(name: "Famous Cats").cards
cat_deck << Card.create(term: "Grumpy Cat", definition: "A foul-tempered feline")
cat_deck << Card.create(term: "Ceiling Cat", definition: "Watches you from afar")
cat_deck << Card.create(term: "Garfield", definition: "Loves Lasagna")
cat_deck << Card.create(term: "Monorail Cat", definition: "Hovers in the air")
cat_deck << Card.create(term: "Chesire Cat", definition: "Is magical and annoying and purple and grins like a sociopath")
cat_deck << Card.create(term: "Mr. Bigglesworth", definition: "Belongs to Dr. Evil")
cat_deck << Card.create(term: "Keyboard Cat", definition: "Is a keyboard master")

test_deck_1 = Deck.create(name: "Test Deck One").cards
test_deck_1 << Card.create(term: "one", definition: "1")
test_deck_1 << Card.create(term: "two", definition: "2")
test_deck_1 << Card.create(term: "three", definition: "3")
test_deck_1 << Card.create(term: "four", definition: "4")

test_deck_2 = Deck.create(name: "Test Deck Two").cards
test_deck_2 << Card.create(term: "one", definition: "1")
test_deck_2 << Card.create(term: "two", definition: "2")
test_deck_2 << Card.create(term: "three", definition: "3")
test_deck_2 << Card.create(term: "four", definition: "4")
