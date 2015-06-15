json.array!(@orders) do |order|
  json.extract! order, :id, :order_id, :date, :customer_id
  json.url order_url(order, format: :json)
end
