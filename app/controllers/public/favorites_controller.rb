class Public::FavoritesController < ApplicationController

  def create
    post = post.find(params[:post_id])
    @favorite = current_end_user.favorites.new(post_id: post.id)
    @favorite.save
    render 'replace_btn'
  end

  def destroy
    post = post.find(params[:post_id])
    @favorite = current_end_user.favorites.find_by(post_id: post.id)
    @favorite.destroy
    render 'replace_btn'
  end


end
