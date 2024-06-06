json.extract! food, :id, :category, :price, :name, :image, :created_at, :updated_at
json.url food_url(food, format: :json)
