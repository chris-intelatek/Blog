json.extract! blogpost, :id, :title, :author, :blog_entry, :created_at, :updated_at
json.url blogpost_url(blogpost, format: :json)