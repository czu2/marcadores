json.extract! bookmark, :id, :url, :status, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
