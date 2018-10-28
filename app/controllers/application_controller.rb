class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV.fetch("SESSION_SECRET")
    use Rack::Flash 
  end

  get "/" do
    redirect to "/dreams" if logged_in?
    erb :index
  end

  get "/signup" do
    @user = User.new

    if logged_in?
      redirect to "/dreams"
    end
    erb :signup
  end

  post "/signup" do
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect to "/dreams"
    else
      erb :signup
    end
  end

  get "/login" do
    redirect to "/dreams" if logged_in?
    erb :login
  end

  post "/login" do
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
    else
      flash[:notice] = "There was a problem logging you in.  Please check email address and password."
      redirect "/login"
    end
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by_id(session[:user_id])
    end
  end

end
