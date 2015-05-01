json.array!(@habits) do |habit|
  json.extract! habit, :id, :user_id, :habit1, :habit2, :habit3
  json.url habit_url(habit, format: :json)
end
