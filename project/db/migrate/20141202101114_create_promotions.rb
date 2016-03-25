class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.references :Store, index: true

      t.timestamps
    end
  end
end
