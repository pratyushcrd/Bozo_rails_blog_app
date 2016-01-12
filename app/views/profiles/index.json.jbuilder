json.array!(@profiles) do |profile|
  json.extract! profile, :id, :bio, :dob, :hobbies, :user_id
  json.url profile_url(profile, format: :json)
end
