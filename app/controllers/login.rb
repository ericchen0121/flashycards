enable :sessions

post '/create' do
  User.create(name: params[:name], password: params[:password])
  redirect '/decks'
end

post '/login' do
  @user = User.where(name: params[:name], password: params[:password]).first

  if @user != nil
    session[:user_id] = User.where(name: params[:name], password: params[:password]).first.id
    redirect '/decks'
  else
    @message = "This user is not in the database.  Please make a new account!"
    erb :index
  end
end
