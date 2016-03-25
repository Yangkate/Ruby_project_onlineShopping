class StoresController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_store, only: [:show, :edit, :update, :destroy]


  def index
    @stores = Store.all
    if params[:shopping_mall_id] != nil
      @stores = Store.where(:ShoppingMall_id => params[:shopping_mall_id])
      @shopping_mall_id = params[:shopping_mall_id]
    end
    respond_with(@stores)
  end

  def show
    respond_with(@store)
  end

  def view_store

    if params[:search] || params[:id]
      @stores = Store.search(params[:search], params[:id]).order("created_at DESC")
    else
      @stores = Store.order("created_at DESC")
    end
    if params[:shopping_mall_id]
      @stores = Store.where(:ShoppingMall_id => params[:shopping_mall_id])
      @shopping_mall_id = params[:shopping_mall_id]
    end

    @stores = @stores.paginate(:per_page => 5, :page => params[:page])
    respond_with(@store)
  end

  def new
    @store = Store.new
    @shopping_mall_id = params[:shopping_mall_id]
    respond_with(@store)
  end

  def edit
    @shopping_mall_id = @store.ShoppingMall_id
  end

  def create
    @store = Store.new(store_params)
    @store.ShoppingMall_id = params[:shopping_mall_id]
    @store.save

    redirect_to stores_path(:shopping_mall_id => params[:shopping_mall_id])
    #respond_with(@store)
  end

  def update
    @store.update(store_params)

    redirect_to stores_path(:shopping_mall_id => @store.ShoppingMall_id)
    #respond_with(@store)
  end

  def destroy
    @store.destroy
    redirect_to stores_path(:shopping_mall_id => @store.ShoppingMall_id)
    #respond_with(@store)
  end

  private
    def set_store
      @store = Store.find(params[:id])
    end

    def store_params
      params.require(:store).permit(:store_name, :store_contact_phone, :store_email, :description, :ShoppingMall_id, :StoreCategory_id, :image, :location)
    end
end
