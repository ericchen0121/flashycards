post '/create' do
  User.create(name: params[:name], password: params[:password])
  redirect '/decks'
end

post '/login' do
  @user = User.where(name: params[:name], password: params[:password]).first

  if @user != nil
    redirect '/decks'
  else
    @message = "This user is not in the database.  Please make a new account!"
    erb :index
  end
end
