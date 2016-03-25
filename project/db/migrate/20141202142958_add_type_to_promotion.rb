class AddTypeToPromotion < ActiveRecord::Migration
  def change
    add_column :promotions, :type, :integer
  end
end
