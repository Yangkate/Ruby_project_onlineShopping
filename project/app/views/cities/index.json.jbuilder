json.array!(@cities) do |city|
  json.extract! city, :id, :CityName, :Country_id
  json.url city_url(city, format: :json)
end
