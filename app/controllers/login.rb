enable :sessions

post '/create' do
  # if params[:password] != params[:password_confirm]
  #   @message = ["Passwords do not match."]
  #   erb :index
  # end

  current_user = User.create(name: params[:name].downcase, password: params[:password])
  if current_user.valid?
    session[:user_id] = current_user.id
    redirect '/decks'
  else
    # display error messages
    @message = current_user.return_errors
    erb :index
  end
end

post '/login' do
  current_user = User.where(name: params[:name].downcase, password: params[:password]).first

  if current_user != nil
    session[:user_id] = current_user.id
    redirect '/decks'
  else
    @message = ["Invalid username or password."]
    erb :index
  end
end
