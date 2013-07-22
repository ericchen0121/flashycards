enable :sessions

post '/decks' do
  Deck.create(name: params[:new_deck_name])
  @decks = Deck.all
  erb :select_deck
end

get '/deck/:deck_id/edit' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards.all
  erb :edit_deck
end

get '/deck/:deck_id/delete' do
  @deck = Deck.find(params[:deck_id])
  @deck.cards.each { |card| card.delete }
  @deck.delete
  @decks = Deck.all
  erb :select_deck
end

get '/deck/:deck_id/cards' do
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards.all
  erb :select_card
end

get '/deck/:deck_id/card/:card_id/edit' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  erb :edit_card
end

post '/deck/:deck_id/card/:card_id/edit' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  @card.definition = params[:definition]
  @card.term = params[:term]
  @card.save
  @message = "Saved!"
  erb :edit_card
end

post '/deck/:deck_id/cards' do
  @deck = Deck.find(params[:deck_id])
  @new_card = Card.create(definition: params[:new_definition_name], term: params[:new_term_name], deck_id: @deck.id)
  @cards = @deck.cards.all
  erb :select_card
end

get '/deck/:deck_id/card/:card_id/delete' do
  # @deck = Deck.where(id: Card.find(params[:card_id].id).first
  # Card.delete(params[:card_id])
  # erb :edit_deck

  card_id = params[:card_id]
  Card.delete(card_id)
  @deck = Deck.find(params[:deck_id])
  @cards = @deck.cards
  erb :edit_deck
end
