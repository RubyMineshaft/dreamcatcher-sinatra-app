class DreamsController < ApplicationController

  get "/dreams" do
    if logged_in?
      erb :"dreams/index"
    else
      flash[:error] = "You must log in or sign up to view that page."
      redirect "/"
    end
  end

  get "/dreams/new" do
    if logged_in?
      erb :"dreams/new"
    else
      flash[:error] = "You must be logged in to add a new dream."
      redirect "/"
    end 
  end

  get "/dreams/:id" do
    @dream = Dream.find_by_id(params[:id])
    if logged_in?
      erb :"dreams/show"
    else
      flash[:error] = "You must log in or sign up to view that page."
      redirect "/"
    end
  end



end
