class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :store_contact_phone
      t.string :store_email
      t.string :description
      t.references :ShoppingMall, index: true
      t.references :StoreCategory, index: true

      t.timestamps
    end
  end
end
