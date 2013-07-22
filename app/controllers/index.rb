get '/' do
  # authenticate_gate
  erb :index
end

get '/logout' do
  session.clear
  redirect('/')
end

get '/about' do
  erb :about
end



