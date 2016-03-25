class CitiesController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all.order("city_name")
    respond_with(@cities)
  end

  def show
    respond_with(@city)
  end

  def new
    @city = City.new
    respond_with(@city)
  end

  def edit
  end

  def create
    @city = City.new(city_params)
    @city.save

    redirect_to cities_path
    #respond_with(@city)
  end

  def update
    @city.update(city_params)
    redirect_to cities_path
    #respond_with(@city)
  end

  def destroy
    @city.destroy

    redirect_to cities_path
    #respond_with(@city)
  end

  private
    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:city_name, :Country_id)
    end
end
