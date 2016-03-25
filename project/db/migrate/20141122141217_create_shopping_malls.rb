class CreateShoppingMalls < ActiveRecord::Migration
  def change
    create_table :shopping_malls do |t|
      t.string :shopping_mall_name
      t.string :phone_number
      t.string :contact_name
      t.string :contanct_phone_number
      t.string :contact_email
      t.string :address
      t.string :certification
      t.references :City, index: true
      t.references :Country, index: true

      t.timestamps
    end
  end
end
