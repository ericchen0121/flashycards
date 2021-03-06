world_series = Deck.create(name: "MLB World Series Winners of the Last Decade").cards
world_series << Card.create(term: 'Giants', definition: "2012 winner between the Tigers and Giants")
world_series << Card.create(term: 'Cardinals', definition: '2011 winner between the Cardinals and Rangers')
world_series << Card.create(term: 'Giants', definition: '2010 winner between the Rangers and Giants')
world_series << Card.create(term: 'Yankees', definition: '2009 winner between the Yankees and Phillies')
world_series << Card.create(term: 'Phillies', definition: '2008 winner between the Phillies and Rays')
world_series << Card.create(term: 'Red Sox', definition: '2007 winner between the Rockies and Red Sox')
world_series << Card.create(term: 'Cardinals', definition: '2006 winner between the Cardinals and Tigers')
world_series << Card.create(term: 'White Sox', definition: '2005 winner between the Astros and White Sox')
world_series << Card.create(term: 'Red Sox', definition: '2004 winner between the Red Sox and Cardinals')
world_series << Card.create(term: 'Marlins', definition: '2003 winner between the Yankees and Marlins')

state_example_deck = Deck.create(name: "State Capitals - mini").cards
state_example_deck << Card.create(term: "Sacramento", definition: "California")
state_example_deck << Card.create(term: "Honolulu", definition: "Hawaii")
state_example_deck << Card.create(term: "Richmond", definition: "Virginia")
state_example_deck << Card.create(term: "Salem", definition: "Oregon")
state_example_deck << Card.create(term: "Providence", definition: "Rhode Island")
state_example_deck << Card.create(term: "Olympia", definition: "Washington")

state_deck = Deck.create(name: "State Capitals").cards
state_deck << Card.create(definition: "Alabama", term: "Montgomery")
state_deck << Card.create(definition: "Alaska", term: "Juneau")
state_deck << Card.create(definition: "Arizona", term: "Phoenix")
state_deck << Card.create(definition: "Arkansas", term: "Little Rock")
state_deck << Card.create(definition: "California", term: "Sacramento")
state_deck << Card.create(definition: "Colorado", term: "Denver")
state_deck << Card.create(definition: "Connecticut", term: "Hartford")
state_deck << Card.create(definition: "Delaware", term: "Dover")
state_deck << Card.create(definition: "Florida", term: "Tallahassee")
state_deck << Card.create(definition: "Georgia", term: "Atlanta")
state_deck << Card.create(definition: "Hawaii", term: "Honolulu")
state_deck << Card.create(definition: "Idaho", term: "Boise")
state_deck << Card.create(definition: "Illinois", term: "Springfield")
state_deck << Card.create(definition: "Indiana", term: "Indianapolis")
state_deck << Card.create(definition: "Iowa", term: "Des Moines")
state_deck << Card.create(definition: "Kansas", term: "Topeka")
state_deck << Card.create(definition: "Kentucky", term: "Frankfort")
state_deck << Card.create(definition: "Louisiana", term: "Baton Rouge")
state_deck << Card.create(definition: "Maine", term: "Augusta")
state_deck << Card.create(definition: "Maryland", term: "Annapolis")
state_deck << Card.create(definition: "Massachusetts", term: "Boston")
state_deck << Card.create(definition: "Michigan", term: "Lansing")
state_deck << Card.create(definition: "Minnesota", term: "St. Paul")
state_deck << Card.create(definition: "Mississippi", term: "Jackson")
state_deck << Card.create(definition: "Missouri", term: "Jefferson City")
state_deck << Card.create(definition: "Montana", term: "Helena")
state_deck << Card.create(definition: "Nebraska", term: "Lincoln")
state_deck << Card.create(definition: "Nevada", term: "Carson City")
state_deck << Card.create(definition: "New Hampshire", term: "Concord")
state_deck << Card.create(definition: "New Jersey", term: "Trenton")
state_deck << Card.create(definition: "New Mexico", term: "Santa Fe")
state_deck << Card.create(definition: "New York", term: "Albany")
state_deck << Card.create(definition: "North Carolina", term: "Raleigh")
state_deck << Card.create(definition: "North Dakota", term: "Bismarck")
state_deck << Card.create(definition: "Ohio", term: "Columbus")
state_deck << Card.create(definition: "Oklahoma", term: "Oklahoma City")
state_deck << Card.create(definition: "Oregon", term: "Salem")
state_deck << Card.create(definition: "Pennsylvania", term: "Harrisburg")
state_deck << Card.create(definition: "Rhode Island", term:  "Providence")
state_deck << Card.create(definition: "South Carolina", term:  "Columbia")
state_deck << Card.create(definition: "South Dakota", term:  "Pierre")
state_deck << Card.create(definition: "Tennessee", term: "Nashville")
state_deck << Card.create(definition: "Texas", term: "Austin")
state_deck << Card.create(definition: "Utah", term: "Salt Lake City")
state_deck << Card.create(definition: "Vermont", term: "Montpelier")
state_deck << Card.create(definition: "Virginia", term: "Richmond")
state_deck << Card.create(definition: "Washington", term: "Olympia")
state_deck << Card.create(definition: "West Virginia", term: "Charleston")
state_deck << Card.create(definition: "Wisconsin", term: "Madison")
state_deck << Card.create(definition: "Wyoming", term: "Cheyenne")

cat_deck = Deck.create(name: "Infamous Cats").cards
cat_deck << Card.create(term: "Garfield", definition: "Cartoon cat: Loves his lasagna")
cat_deck << Card.create(term: "Grumpy Cat", definition: "Know your meme: Not happy when you scratch his tummy")
cat_deck << Card.create(term: "Ceiling Cat", definition: "Know your meme: Watches you from a cutout hole in a wall")
cat_deck << Card.create(term: "Monorail Cat", definition: "Youtube hog: Hovers in the air")
cat_deck << Card.create(term: "Chesire Cat", definition: "Movie star cat: Is magical, purple and has a wide, creepy grin")
cat_deck << Card.create(term: "Mr. Bigglesworth", definition: "Movie star cat: Belongs to Dr. Evil")
cat_deck << Card.create(term: "Keyboard Cat", definition: "Know your meme: Blue-shirted cat who's mastered the piano")

