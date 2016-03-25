class RemoveCountryIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :country_id, :integer
  end
end
