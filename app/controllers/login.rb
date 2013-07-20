enable :sessions

post '/create' do
  if params[:name] == "" || params[:password] == ""
    @message = "User name and password are requires fields."
    erb :index
  elsif User.where(name: params[:name].downcase) == params[:name].downcase
    @message = "This user already exists, please select a different user name."
    erb :index
  else
    current_user = User.create(name: params[:name].downcase, password: params[:password])
    session[:user_id] = current_user.id
    redirect '/decks'
  end
end

post '/login' do
  current_user = User.where(name: params[:name].downcase, password: params[:password]).first

  if current_user != nil
    session[:user_id] = current_user.id
    redirect '/decks'
  else
    @message = "This user does not exist, please make a new account."
    erb :index
  end
end
