json.array!(@reviews) do |review|
  json.extract! review, :id, :comment, :ShoppingMall_id, :User_id
  json.url review_url(review, format: :json)
end
