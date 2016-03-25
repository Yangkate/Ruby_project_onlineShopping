class AddDiscountCodeToPromotion < ActiveRecord::Migration
  def change
    add_column :promotions, :discount_code, :string
  end
end
