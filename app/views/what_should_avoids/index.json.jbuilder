json.array!(@what_should_avoids) do |what_should_avoid|
  json.extract! what_should_avoid, :id, :content
  json.url what_should_avoid_url(what_should_avoid, format: :json)
end
