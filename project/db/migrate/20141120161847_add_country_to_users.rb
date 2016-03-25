class AddCountryToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :Country, index: true
  end
end
