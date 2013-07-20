enable :sessions

get '/decks' do
  @decks = Deck.all
  erb :select_deck
end

post '/round/:deck_id' do
  puts "hello"
end

get '/round/:deck_id/:card_id' do
  Round.create(deck_id: params[:deck_id], user_id: session[:user_id])
  
  @card = Deck.where(id: params[:deck_id]).first.cards.find(params[:card_id])
  @card
  erb :card_display
end
