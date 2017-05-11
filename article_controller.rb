class ArticlesController < ApplicationController
  def show
    @user = current_user
    @article = Article.find(@user.id)
    @commnet = Comment.find(@article.id)

  end
end
