class RemoveCityFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :city, index: true
  end
end
