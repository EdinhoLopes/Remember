json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :product, :valor, :amount
  json.url purchase_url(purchase, format: :json)
end
