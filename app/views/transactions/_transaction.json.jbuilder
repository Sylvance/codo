json.extract! transaction, :id, :user_id, :video_id, :paidto, :paid, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
