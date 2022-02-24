get '/' do
    events = run_sql("SELECT * FROM events ORDER BY date ASC")
  
    erb :'event/index', locals: {
      events: events
    }
  end

post '/event/:id' do
    event_id = params['id']
    user_id = session['user_id']
    name = params['name']
    image_url = params['image_url']
  
    run_sql("INSERT INTO user_event(user_id, event_id, name, image_url) VALUES($1, $2, $3, $4)", [user_id, event_id, name, image_url])
  
    redirect '/'
end

delete '/event/:id' do
    id = params['id']
    run_sql("DELETE FROM user_event WHERE id = $1", [id])
  
    redirect '/dashboard'
end

get '/event/:id/edit' do
    id = params['id']
    event = run_sql("SELECT * FROM user_event WHERE id = $1", [id])[0]
    
    erb :'event/edit', locals: {
      event: event
    }
end

put '/event/:id' do
    id = params['id']
    name = params['name']
  
    run_sql("UPDATE user_event SET name = $2 WHERE id = $1", [id, name])

    redirect'dashboard'
end

get '/about' do
    erb :about
  end