class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :CityName
      t.references :Country, index: true

      t.timestamps
    end
  end
end
