enable :sessions

get '/decks' do
  @decks = Deck.all
  erb :select_deck
end

post '/round/:deck_id' do
  puts "hello"
end

get '/deck/:deck_id/start' do
 
  @deck_id = params[:deck_id]
  session[:array_cards] = []

  @all_cards_in_deck = Deck.where(id: params[:deck_id]).first.cards
  @all_cards_in_deck.each do |card|
    session[:array_cards] << card.id
  end

  session[:array_cards].shuffle!

  card_id = session[:array_cards].pop
  @card = Card.where(id: card_id).first # Card object

  new_round = Round.create(deck_id: params[:deck_id], user_id: session[:user_id])
  session[:round_id] = new_round.id

  erb :card_display
end

post '/deck/:deck_id/card/new' do

  current_card = Card.find(params[:card_id])
  if current_card.definition.downcase == params[:guess].downcase
    Guess.create(correct: 1, round_id: session[:round_id] , card_id: params[:card_id])
  else
    Guess.create(correct: 0, round_id: session[:round_id] , card_id: params[:card_id])
  end

  if session[:array_cards].empty?
    redirect '/results'
  else
    @deck_id = params[:deck_id]
    card_id = session[:array_cards].pop
    @card = Card.where(id: card_id).first
    erb :card_display
  end
end
