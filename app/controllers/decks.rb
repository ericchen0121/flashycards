
get '/decks' do
  @decks = Deck.all
  erb :select_deck
end

post '/round/:deck_id' do
  @round = Round.create()
end
