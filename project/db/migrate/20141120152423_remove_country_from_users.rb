class RemoveCountryFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :Country, index: true
  end
end
