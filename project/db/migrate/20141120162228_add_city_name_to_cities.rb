class AddCityNameToCities < ActiveRecord::Migration
  def change
    add_column :cities, :city_name, :string
  end
end
