json.extract! listing, :id, :user_id, :category_id, :title, :description, :price, :sold, :created_at, :updated_at
json.url listing_url(listing, format: :json)
