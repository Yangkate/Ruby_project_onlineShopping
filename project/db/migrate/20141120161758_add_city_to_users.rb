class AddCityToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :City, index: true
  end
end
