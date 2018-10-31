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


end
