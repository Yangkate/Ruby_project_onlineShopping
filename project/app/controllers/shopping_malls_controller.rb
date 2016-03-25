class ShoppingMallsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_shopping_mall, only: [:show, :edit, :update, :destroy]

  def index
    @shopping_malls = ShoppingMall.all
    respond_with(@shopping_malls)
  end

  def show
    @promotions = Promotion.where("\"Store_id\" IN (select id from stores where \"ShoppingMall_id\" = ?)", @shopping_mall.id)
    @stores = Store.where(:ShoppingMall_id => @shopping_mall.id)
    respond_with(@shopping_mall)
  end

  def new
    @shopping_mall = ShoppingMall.new
    respond_with(@shopping_mall)
  end

  def edit
  end

  def create
    @shopping_mall = ShoppingMall.new(shopping_mall_params)
    @shopping_mall.User_id = current_user.id
    @shopping_mall.save
    respond_with(@shopping_mall)
  end

  def update
    @shopping_mall.update(shopping_mall_params)
    respond_with(@shopping_mall)
  end

  def destroy
    Store.where(:ShoppingMall_id => @shopping_mall.id).destroy_all
    Promotion.where("\"Store_id\" IN (select id from stores where \"ShoppingMall_id\" = ?)", @shopping_mall.id).destroy_all
    Review.where(:ShoppingMall_id => @shopping_mall.id).destroy_all

    @shopping_mall.destroy
    respond_with(@shopping_mall)

  end

  def search_shopping_mall
    if params[:country_id] != nil
        @shopping_malls = ShoppingMall.where(:Country_id => params[:country_id])
    elsif params[:city_id] != nil
        @shopping_malls = ShoppingMall.where(:City_id => params[:city_id])
    end
    respond_with(@shopping_malls)
  end

  private
    def set_shopping_mall
      @shopping_mall = ShoppingMall.find(params[:id])
    end

    def shopping_mall_params
      params.require(:shopping_mall).permit(:shopping_mall_name, :phone_number, :address, :City_id, :Country_id, :link)
    end
end
