class AddPromotionTypeFromPromotion < ActiveRecord::Migration
  def change
    add_column :promotions, :promotion_type, :integer
  end
end
