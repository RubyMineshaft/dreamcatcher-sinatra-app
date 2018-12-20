class CommentsController < ApplicationController

  delete "/comments/:id" do
    comment = Comment.find_by_id(params[:id])
    dream = comment.dream
    comment.destroy
    
    flash[:success] = "Your comment has been successfully deleted."
    redirect "/dreams/#{dream.id}"
  end

  post "/comments" do
    @comment = Comment.new(params[:comment])
    @comment.save
    current_user.comments << @comment
    @comment.dream.comments << @comment

    redirect "/dreams/#{@comment.dream.id}"
  end

  get "/comments/:id/edit" do
    @comment = Comment.find_by_id(params[:id])

    if logged_in? && @comment.user == current_user
      erb :"comments/edit"
    else
      flash[:error] = "Only the owner of a comment can edit it."
      redirect "/dreams/#{@comment.dream.id}"
    end
  end

  patch "/comments/:id" do
    @comment = Comment.find_by_id(params[:id])
    @comment.content = params[:comment][:content]
    @comment.save

    redirect "/dreams/#{@comment.dream.id}"
  end
end
