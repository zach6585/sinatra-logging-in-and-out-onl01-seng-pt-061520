require_relative '../../config/environment'
require 'pry'
require_relative '../../app/models/user.rb'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    # binding.pry
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user 
      session[:user_id] = @user.id 
      redirect to '/account'
    else 
      erb :error
    end 
  end

  get '/account' do
    # binding.pry
<<<<<<< HEAD
    @user = User.find_by(id: session[:user_id])
    if @user 
      erb :account
    else 
      erb :error 
    end 
=======
    # @user = User.find_by(id: session[:user_id])
    # if @user 
      erb :account
    # else 
    #   erb :error 
    # end 
>>>>>>> 39f2e6860b843420d338a2dedeaf1e3f052e220f
  end
  


  get '/logout' do
    session.clear 
    redirect to '/'
  end


end

