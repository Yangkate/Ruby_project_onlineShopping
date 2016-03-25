class RemoveAddressFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Address, :string
  end
end
