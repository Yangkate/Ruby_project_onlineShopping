class RemoveContactNameFromShoppingMalls < ActiveRecord::Migration
  def change
    remove_column :shopping_malls, :contact_name, :string
  end
end
