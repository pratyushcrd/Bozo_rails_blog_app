json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment, :user_id, :forum_id
  json.url comment_url(comment, format: :json)
end
