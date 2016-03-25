class AddUserToShoppingMalls < ActiveRecord::Migration
  def change
    add_reference :shopping_malls, :User, index: true
  end
end
