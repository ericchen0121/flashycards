def logged_in?
	session.empty? ? false : true
end

def authenticate_gate
	redirect('/') unless logged_in?
end