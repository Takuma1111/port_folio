json.extract! post, :id, :image, :sound, :video, :title, :text, :created_at, :updated_at
json.url post_url(post, format: :json)
