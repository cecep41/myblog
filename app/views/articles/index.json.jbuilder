json.array!(@articles) do |article|
  json.extract! article, :id, :title, :body, :publish, :publish_at, :user_id
  json.url article_url(article, format: :json)
end
