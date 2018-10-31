class UsersController < ApplicationController

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
    @user.update(params[:user])
    if @user.save
      flash[:success] = "Profile updated."
      redirect "/users/#{@user.id}"
    else
      erb :"users/edit"
    end
  end


end
