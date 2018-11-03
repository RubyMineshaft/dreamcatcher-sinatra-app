class CategoriesController < ApplicationController

  get "/categories/:id" do
    @category = Category.find_by(id: params[:id])
    if logged_in?
      erb :"categories/show"
    else
      redirect "/"
    end
  end

  get "/categories" do
    if logged_in?
      erb :"categories/index"
    else
      redirect "/"
    end
  end
end
