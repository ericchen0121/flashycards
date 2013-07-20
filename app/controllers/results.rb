get '/results' do
  # add in loop through session[:user_id] if we want the view to have all results
  round_id = session[:round_id]
  round = Round.find(round_id)
  @results = {round: round_id, correct: round.correct_count, incorrect: round.incorrect_count, total: round.total}

  

  erb :results
end
