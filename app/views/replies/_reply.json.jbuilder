json.extract! reply, :id, :user_id, :video_id, :title, :content, :created_at, :updated_at
json.url reply_url(reply, format: :json)
