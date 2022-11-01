class FavoritesController < ApplicationController
  # def create
  #   favorite = current_user.favorites.create(blog_id: params[:blog_id])
  #   redirect_to blogs_path, notice: "#{favorite.blog.user.name}さんのブログをお気に入り登録しました"
  # end

  # def destroy
  #   favorite = current_user.favorites.find_by(id: params[:id]).destroy
  #   redirect_to blogs_path, notice: "#{favorite.blog.user.name}さんのブログをお気に入り解除しました"
  # end

  # def create
  #   @psychology_test = PsychologyTest.find(params[:favorite][:psychology_test_id])
  #   current_user.favorites.create(psychology_test: @psychology_test)
  # end

  def create
    @experience = Experience.find(params[:favorite][:experience_id])
    current_user.favorites.create(experience: @experience)
  end

  # def destroy
  #   @psychology_test = Favorite.find(params[:id]).psychology_test
  #   current_user.favorites.find_by(psychology_test: @psychology_test).destroy
  # end

  def destroy
    @experience = Favorite.find(params[:id]).experience
    current_user.favorites.find_by(experience: @experience).destroy
  end

  # def create
  #   @article = Article.find(params[:article_id])
  #   Favorite.create(user_id: current_user.id, article_id: params[:article_id])
  # end

  # def destroy
  #   @article = Article.find(params[:id])
  #   Favorite.find_by(user_id: current_user.id, article_id: params[:id]).destroy
  # end


end
