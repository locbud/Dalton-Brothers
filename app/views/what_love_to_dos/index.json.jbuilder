json.array!(@what_love_to_dos) do |what_love_to_do|
  json.extract! what_love_to_do, :id, :title, :description, :deadline, :number_of_items, :user_estimated_time
  json.url what_love_to_do_url(what_love_to_do, format: :json)
end
