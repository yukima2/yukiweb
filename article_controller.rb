class ArticlesController < ApplicationController
  def show
    @user = current_user
    @aricle = Article.find(@user.id)
    @commnet = Comment.find(@article.id)

  end
end
