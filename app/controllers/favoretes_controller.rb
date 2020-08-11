class FavoretesController < ApplicationController
  before_action :require_user_logged_in

  def create
    favpost = Micropost.find(params[:micropost_id])
    current_user.favorete(favpost)
    flash[:success] = 'お気に入りを追加しました。'
    redirect_to root_url
  end

  def destroy
    favpost = Micropost.find(params[:micropost_id])
    current_user.unfavorete(favpost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to root_url
  end
end
