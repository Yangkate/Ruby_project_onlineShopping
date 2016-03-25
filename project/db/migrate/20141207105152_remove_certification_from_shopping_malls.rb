class RemoveCertificationFromShoppingMalls < ActiveRecord::Migration
  def change
    remove_column :shopping_malls, :certification, :string
  end
end
