class RemoveContanctPhoneNumberFromShoppingMalls < ActiveRecord::Migration
  def change
    remove_column :shopping_malls, :contanct_phone_number, :string
  end
end
