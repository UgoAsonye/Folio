# json.extract! upload, :id, :created_at, :updated_at
# json.url upload_url(upload, format: :json)

json.id upload.id
json.title upload.title
json.description upload.description
json.image upload.image
json.user_id upload.user_id
