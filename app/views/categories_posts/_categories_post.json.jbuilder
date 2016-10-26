json.extract! categories_post, :id, :category_id, :post_id, :created_at, :updated_at
json.url categories_post_url(categories_post, format: :json)