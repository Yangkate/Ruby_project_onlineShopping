json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :title, :description, :start_date, :end_date, :Store_id
  json.url promotion_url(promotion, format: :json)
end
