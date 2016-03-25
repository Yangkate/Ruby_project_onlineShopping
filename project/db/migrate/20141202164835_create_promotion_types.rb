class CreatePromotionTypes < ActiveRecord::Migration
  def change
    create_table :promotion_types do |t|
      t.string :title

      t.timestamps
    end
  end
end
