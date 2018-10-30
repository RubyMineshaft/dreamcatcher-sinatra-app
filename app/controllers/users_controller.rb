class UsersController < ApplicationController

  get "/users/:id" do
    @user = User.find_by(params[:id])
    if logged_in?
      erb :"users/show"
    else
      redirect "/"
    end 
  end


end
