class RemovePromotionTypeFromPromotions < ActiveRecord::Migration
  def change
    remove_column :promotions, :promotion_type, :integer
  end
end
