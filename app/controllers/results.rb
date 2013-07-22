# RESULTS FOR ONE ROUND
get '/results' do
  # add in loop through session[:user_id] if we want the view to have all results
  round_id = session[:round_id]
  round = Round.find(round_id)
  @results = round.data

  erb :results
end

#RESULTS FOR ALL ROUNDS
get '/results/all' do
  user_id = session[:user_id]
  user_rounds = User.find(user_id).rounds.reverse # latest round first

  get_results(user_rounds)

  erb :results_all
end

def get_results(user_rounds)
  @results = []
  user_rounds.each do |round|
    @results << round.data
    p @results
  end
end 
