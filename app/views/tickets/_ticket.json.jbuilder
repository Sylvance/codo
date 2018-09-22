json.extract! ticket, :id, :user_id, :video_id, :token, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
