post '/create' do
  User.create(name: params[:name], password: params[:password])
  erb :login
end

post '/login' do
  @user = User.where(name: params[:name], password: params[:password]).first

  if @user != nil
    erb :login
  else
    @message = "This user is not in the database.  Please make a new account!"
    erb :index
  end
end
