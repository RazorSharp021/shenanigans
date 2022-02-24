get '/new_user' do
    erb :'users/new'
end

post '/user' do
    first_name = params['first_name']
    last_name = params['last_name']
    email = params['email']
    password = params['password']
    
    create_user(first_name, last_name, email, password)
    
    erb :'sessions/new'  
end

get '/dashboard' do
    user_id = session['user_id']
    events = run_sql("SELECT * FROM user_event WHERE user_id = $1", [user_id])
    
    erb :'users/dashboard', locals: {
      events: events
    }
end

