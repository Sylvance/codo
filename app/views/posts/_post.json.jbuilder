json.extract! post, :id, :user_id, :title, :post_type, :content, :created_at, :updated_at
json.url post_url(post, format: :json)
