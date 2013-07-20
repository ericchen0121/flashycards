enable :sessions

post '/create' do
  current_user = User.create(name: params[:name], password: params[:password])
  session[:user_id] = current_user.id
  redirect '/decks'
end

post '/login' do
  current_user = User.where(name: params[:name], password: params[:password]).first

  if current_user != nil
    session[:user_id] = current_user.id
    redirect '/decks'
  else
    @message = "This user is not in the database.  Please make a new account!"
    erb :index
  end
end
