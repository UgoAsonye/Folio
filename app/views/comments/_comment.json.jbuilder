# json.extract! comment, :id, :created_at, :updated_at
# json.url comment_url(comment, format: :json)

json.id comment.id
json.user_id comment.user_id
json.upload_id comment.upload_id
json.comment comment.comment
