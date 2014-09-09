json.array!(@souveniors) do |souvenior|
  json.extract! souvenior, :id, :score, :comment
  json.url souvenior_url(souvenior, format: :json)
end
