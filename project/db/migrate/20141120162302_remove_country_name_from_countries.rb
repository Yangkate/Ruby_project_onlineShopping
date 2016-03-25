class RemoveCountryNameFromCountries < ActiveRecord::Migration
  def change
    remove_column :countries, :CountryName, :string
  end
end
