json.array!(@what_fixed_to_dos) do |what_fixed_to_do|
  json.extract! what_fixed_to_do, :id, :title, :description, :scheduled_time, :choice_count
  json.url what_fixed_to_do_url(what_fixed_to_do, format: :json)
end
