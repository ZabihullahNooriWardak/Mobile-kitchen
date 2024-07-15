json.extract! review, :id, :user_id, :order_id, :rating, :feedback, :suggestion, :created_at, :updated_at
json.url review_url(review, format: :json)
