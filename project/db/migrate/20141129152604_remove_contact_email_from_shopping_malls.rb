class RemoveContactEmailFromShoppingMalls < ActiveRecord::Migration
  def change
    remove_column :shopping_malls, :contact_email, :string
  end
end
