     
require 'sinatra'
require 'httparty'
require 'bcrypt'
require 'pg'
require 'sinatra/reloader' if development?
require 'pry' if development?

enable :session

require_relative 'db/db'

require_relative 'models/user'
require_relative 'models/event'

require_relative 'controllers/sessions_controller'
require_relative 'controllers/users_controller'

require_relative 'helpers/sessions_helper'

get '/' do
  erb :index
end





