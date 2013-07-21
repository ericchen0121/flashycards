get '/results' do
  # add in loop through session[:user_id] if we want the view to have all results
  round_id = session[:round_id]
  round = Round.find(round_id)
  @results = round.data

  erb :results
end

get '/results/all' do
  # get all rounds for the user
  # iterate .each over all rounds 
  # @results << '
end
