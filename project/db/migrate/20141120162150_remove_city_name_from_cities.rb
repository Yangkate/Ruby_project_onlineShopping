class RemoveCityNameFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :CityName, :string
  end
end
