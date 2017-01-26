class Api::V1::ItemsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def show
    @item = Item.find(params[:id])
    @reviews = @item.reviews.order("score DESC")
    @users = []
    @current_user = current_user
    @reviews.each { |review| @users << review.user }
    render json: { reviews: @reviews, users: @users, currentUser: @current_user }
  end
end
