json.extract! post, :id, :user, :title, :post, :votes, :created_at, :updated_at
json.url post_url(post, format: :json)