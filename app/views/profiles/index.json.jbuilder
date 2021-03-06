json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :birthday, :bio, :facebook, :twitter, :user_id
  json.url profile_url(profile, format: :json)
end
