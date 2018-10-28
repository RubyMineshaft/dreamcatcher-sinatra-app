class DreamsController < ApplicationController

  get "/dreams" do
    if logged_in?
      erb :"dreams/index"
    else
      flash[:error] = "You must log in or sign up to view that page."
      redirect "/"
    end
  end

end
