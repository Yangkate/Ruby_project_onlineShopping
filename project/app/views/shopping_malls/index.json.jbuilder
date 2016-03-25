json.array!(@shopping_malls) do |shopping_mall|
  json.extract! shopping_mall, :id, :shopping_mall_name, :phone_number, :contact_name, :contanct_phone_number, :contact_email, :address, :certification, :City_id, :Country_id
  json.url shopping_mall_url(shopping_mall, format: :json)
end
