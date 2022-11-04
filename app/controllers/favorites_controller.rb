class FavoritesController < ApplicationController
  # before_action :experience_params, only: [:create, :destroy]
  # def create
  #   favorite = current_user.favorites.create(blog_id: params[:blog_id])
  #   redirect_to blogs_path, notice: "#{favorite.blog.user.name}さんのブログをお気に入り登録しました"
  # end

  def create
    @favorite = current_user.favorites.create(experience_id: params[:experience_id])

    # favorite = Favorite.create(user_id: current_user.id, experience_id: params[:id])


    # binding.irb
    redirect_back(fallback_location: root_path)
    # redirect_to experiences_path, notice: "#{favorite.experience.user.name}さんのブログをお気に入り登録しました"
    # binding.irb
    # redirect_to blogs_path, notice: "#{favorite.blog.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    @favorite = current_user.favorites.find_by(experience_id: params[:experience_id]).destroy
    # favorite = Favorite.find_by(user_id: current_user.id, experience_id: params[:id])
    # favorite.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  # def experience_params
  #   @experience = Experience.find(params[:id])
  # end

  # def destroy
  #   @experience = Experience.find(params[:experience_id])
  #   @favorite = current_user.favorites.find_by(experience_id: @experience.id).destroy
  #   redirect_back(fallback_location: root_path)
  #   # @favorite = current_user.favorites.find_by(id: params[:id]).destroy
  #   # redirect_to blogs_path, notice: "#{favorite.blog.user.name}さんのブログをお気に入り解除しました"
  # end

  # def create
  #   @psychology_test = PsychologyTest.find(params[:favorite][:psychology_test_id])
  #   current_user.favorites.create(psychology_test: @psychology_test)
  # end

  #山田さんのを元に編集
  # def create
  #   @experience = Experience.find(params[:favorite][:experience_id])
  #   current_user.favorites.create(experience: @experience)
  # end

  # def destroy
  #   @psychology_test = Favorite.find(params[:id]).psychology_test
  #   current_user.favorites.find_by(psychology_test: @psychology_test).destroy
  # end

  #山田さんのを元に編集
  # def destroy
  #   @experience = Favorite.find(params[:id]).experience
  #   current_user.favorites.find_by(experience: @experience).destroy
  # end

  # def create
  #   @article = Article.find(params[:article_id])
  #   Favorite.create(user_id: current_user.id, article_id: params[:article_id])
  # end

  # def destroy
  #   @article = Article.find(params[:id])
  #   Favorite.find_by(user_id: current_user.id, article_id: params[:id]).destroy
  # end


end
