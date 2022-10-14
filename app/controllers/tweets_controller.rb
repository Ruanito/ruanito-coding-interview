class TweetsController < ApplicationController
  def index
    tweets = Tweet.by_username(params[:user_username])

    render json: tweets.order(created_at: :desc).where('tweets.created_at < ?', params[:date])
  end
end
