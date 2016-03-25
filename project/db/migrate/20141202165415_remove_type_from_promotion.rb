class RemoveTypeFromPromotion < ActiveRecord::Migration
  def change
    remove_column :promotions, :type, :integer
  end
end
