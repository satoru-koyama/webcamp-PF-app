class Public::PostFavoritesController < ApplicationController

  def create
    @post_favorite = PostFavorite.new
    @post_favorite.user_id = current_user.id
    @post_favorite.post_id = params[:post_id]
    @post_favorite.save
    redirect_to posts_path, method: :get
  end


  def destroy
    @post_favorite = PostFavorite.find(params[:id])
    @post_favorite.destroy
    redirect_to posts_path, method: :get
  end

end
