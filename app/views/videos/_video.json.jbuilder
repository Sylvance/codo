json.extract! video, :id, :user_id, :title, :video_type, :view_code, :created_at, :updated_at
json.url video_url(video, format: :json)
