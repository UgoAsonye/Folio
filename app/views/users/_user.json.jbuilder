# json.extract! user, :id, :created_at, :updated_at
# json.url user_url(user, format: :json)

json.id user.id
json.username user.username
json.email user.email
json.password user.password
json.profile_pic user.profile_pic
json.updated_at user.updated_at
