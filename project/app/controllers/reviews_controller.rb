class ReviewsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def show
    respond_with(@review)
  end

  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def review_of_shopping_mall
    @reviews = Review.where(:ShoppingMall_id => params[:shopping_mall_id])
    respond_with(@reviews)
  end

  def create
    @review = Review.new(review_params)
    @review.ShoppingMall_id = params[:shopping_mall_id]
    @review.User_id = params[:user_id]
    @review.save

    redirect_to shopping_mall_path(params[:shopping_mall_id])
    #respond_with(@review)
  end

  def update
    @review.update(review_params)
    respond_with(@review)
  end

  def destroy
    @review.destroy
    respond_with(@review)
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:comment, :ShoppingMall_id, :User_id)
    end
end
