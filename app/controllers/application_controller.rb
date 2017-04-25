class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
  end

  
    def counte(user)
    @counte_microposts = user.microposts.counte
    @counte_likeings = user.likeings.counte
    @counte_likers = user.likers.counte
    end
end