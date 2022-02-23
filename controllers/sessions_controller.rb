get '/user_login' do
  erb :'/sessions/new'
end

post '/sessions/new' do
    email = params['email']
    password = params['password']
    confirm_password = params['confirm_password']
  
    user = find_user_by_email(email)
    if user &&
      BCrypt::Password.new(user['password_digest']) == params['password'] &&
      BCrypt::Password.new(user['password_digest']) == params['confirm_password'] 
  
      session['user_id'] = user['id']
      
      redirect'/'
    else
      redirect '/user_login'  
    end
  end