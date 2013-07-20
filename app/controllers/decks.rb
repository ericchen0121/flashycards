enable :sessions

get '/decks' do
  @decks = Deck.all
  erb :select_deck
end

post '/round/:deck_id' do
  puts "hello"
end

get '/round/deck/:deck_id/card/:card_id' do
  if params[:card_id].to_i == 1 
    Round.create(deck_id: params[:deck_id], user_id: session[:user_id])
  end
  # count correct or not

  session[:array_cards] = []
  @cards = Deck.where(id: params[:deck_id]).first.cards
  @cards.each do |card|
    session[:array_cards] << card.id
  end

  session[:array_cards].uniq!
  session[:array_cards].shuffle

  @deck_id = params[:deck_id]
  # erb :card_display
end
