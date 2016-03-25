json.array!(@stores) do |store|
  json.extract! store, :id, :store_name, :store_contact_phone, :store_email, :description, :ShoppingMall_id, :StoreCategory_id
  json.url store_url(store, format: :json)
end
