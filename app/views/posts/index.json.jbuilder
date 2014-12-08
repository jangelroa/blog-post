json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body
  json.url post_url(post, format: :json)
  json.comments post.comments, :body, :created_at, :updated_at
end
