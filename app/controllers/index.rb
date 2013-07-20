get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/logout' do
  session.clear
end
