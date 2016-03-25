json.array!(@countries) do |country|
  json.extract! country, :id, :CountryName
  json.url country_url(country, format: :json)
end
