json.array!(@books) do |book|
  json.extract! book, :id, :book_id, :book_name, :auther
  json.url book_url(book, format: :json)
end
