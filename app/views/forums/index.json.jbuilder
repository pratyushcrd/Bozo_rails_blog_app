json.array!(@forums) do |forum|
  json.extract! forum, :id, :title, :post, :user_id, :category_id
  json.url forum_url(forum, format: :json)
end
