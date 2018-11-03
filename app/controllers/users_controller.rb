class UsersController < ApplicationController

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
      redirect "/dreams"
    else
      flash[:error] = "There was a problem logging you in.  Please check email address and password."
      redirect "/login"
    end
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

  get "/users/:id" do
    @user = User.find_by(id: params[:id])
    if logged_in?
      erb :"users/show"
    else
      redirect "/"
    end
  end

  get "/users/:id/edit" do
    @user = User.find_by(id: params[:id])
    if logged_in? && @user == current_user
      erb :"users/edit"
    else
      redirect "/"
    end
  end

  patch "/users/:id" do
    @user = User.find_by(id: params[:id])
    @user.username = params[:user][:username]
    @user.city = params[:user][:city]
    @user.bio = params[:user][:bio]
    if @user.save
      flash[:success] = "Profile updated."
      redirect "/users/#{@user.id}"
    else
      erb :"users/edit"
    end
  end
end
