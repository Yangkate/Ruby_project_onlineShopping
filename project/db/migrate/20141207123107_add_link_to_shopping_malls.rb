class AddLinkToShoppingMalls < ActiveRecord::Migration
  def change
    add_column :shopping_malls, :link, :string
  end
end
