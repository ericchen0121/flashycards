enable :sessions

post '/create' do
  current_user = User.create(name: params[:name], password: params[:password])
  if current_user.valid?
    session[:user_id] = current_user.id
    redirect '/decks'
  else
    # dislplay error messages
    @message = current_user.return_errors
    erb :index
  end
end

post '/login' do
  current_user = User.where(name: params[:name], password: params[:password]).first

  if current_user != nil
    session[:user_id] = current_user.id
    redirect '/decks'
  else
    @message = ["Invalid username or password."]
    erb :index
  end
end
