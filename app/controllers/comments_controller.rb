class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]
  def create
    @article = Article.find(params[:article_id])
    @comm = @article.comments.new(comment_params)
    @comm.author = current_user.username
    @comm.save
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end
