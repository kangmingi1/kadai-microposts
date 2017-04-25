class LikeusersController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:like_id])
    current_user.like(user)
    flash[:success] = 'ユーザをお気に入り登録しました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:like_id])
    current_user.unlike(user)
    flash[:success] = 'ユーザのお気に入りを解除しました。'
    redirect_to user
  end
end