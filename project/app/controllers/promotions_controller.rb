class PromotionsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_promotion, only: [:show, :edit, :update, :destroy]

  def index
    @promotions = Promotion.all
    respond_with(@promotions)
  end

  def show
    respond_with(@promotion)
  end

  def new
    @promotion = Promotion.new
    @store_id = params[:store_id]
    respond_with(@promotion)
  end

  def edit
  end

  def promotion_of_shopping_mall
    @promotions = Promotion.where("\"Store_id\" IN (select id from stores where \"ShoppingMall_id\" = ?)", params[:shopping_mall_id]).order("created_at desc")
    @store_id = params[:store_id]
    respond_with(@promotions)
  end


  def promotion_of_store #for admin
    @promotions = Promotion.where(:Store_id => params[:store_id])
    @store_id = params[:store_id]
    respond_with(@promotions, promotion_of_store_path)
  end

  def promotion_of_store_show #for user
    @promotions = Promotion.where(:Store_id => params[:store_id])
    @store_id = params[:store_id]
    respond_with(@promotions, promotion_of_store_show_path)
  end


  def create

    @promotion = Promotion.new(promotion_params)
    @promotion.Store_id = params[:store_id]
    @promotion.save

    redirect_to promotion_of_store_path(:store_id => @promotion.Store_id)
    #respond_with(@promotion)
  end

  def update
    @promotion.update(promotion_params)
    redirect_to promotion_of_store_path(:store_id => @promotion.Store_id)
    #respond_with(@promotion)
  end

  def destroy
    @promotion.destroy
    redirect_to promotion_of_store_path(:store_id => @promotion.Store_id)
    #respond_with(@promotion)
  end

  private
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    def promotion_params
      params.require(:promotion).permit(:title, :description, :start_date, :end_date, :Store_id, :image, :discount_code)
    end
end
