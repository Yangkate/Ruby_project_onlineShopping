class StoreCategoriesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_store_category, only: [:show, :edit, :update, :destroy]

  def index
    @store_categories = StoreCategory.all.order("id")
    respond_with(@store_categories)
  end

  def show
    respond_with(@store_category)
  end

  def new
    @store_category = StoreCategory.new
    respond_with(@store_category)
  end

  def edit
  end

  def create
    @store_category = StoreCategory.new(store_category_params)
    @store_category.save

    redirect_to store_categories_path
    #respond_with(@store_category)
  end

  def update
    @store_category.update(store_category_params)

    redirect_to store_categories_path
    #respond_with(@store_category)
  end

  def destroy
    @store_category.destroy

    redirect_to store_categories_path
    #respond_with(@store_category)
  end

  private
    def set_store_category
      @store_category = StoreCategory.find(params[:id])
    end

    def store_category_params
      params.require(:store_category).permit(:category_name)
    end
end
